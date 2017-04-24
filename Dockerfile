FROM ruby:2.3.1
MAINTAINER wstevo4891@github.com

# Install apt based dependencies required to run Rails as 
# well as RubyGems. As the Ruby image itself is based on a 
# Debian image, we use apt-get to install those.
RUN apt-get update && apt-get install -y \ 
  build-essential \ 
  nodejs

# Configure the main working directory. This is the base 
# directory used in any further RUN, COPY, and ENTRYPOINT 
# commands.
RUN mkdir -p /bolt-network
WORKDIR /bolt-network

# Copy the Gemfile as well as the Gemfile.lock and install 
# the RubyGems. This is a separate step so the dependencies 
# will be cached unless changes to one of those two files 
# are made.
COPY Gemfile Gemfile.lock ./ 
RUN gem install bundler && bundle install --jobs 20 --retry 5

# Store the bundler cache
# To run bundle install: docker-compose run app bundle
# If you intend on deploying the web container you’ll need 
# to rebuild it WITHOUT linking the bundle data container, 
# but that’s not a big deal since you’d have to rebuild the 
# container anyway with your code changes.
ENV BUNDLE_GEMFILE=bolt-network/Gemfile \
  BUNDLE_JOBS=2 \
  BUNDLE_PATH=/bundle

# Copy the main application.
COPY . ./

# Expose port 3000 to the Docker host, so we can access it 
# from the outside.
EXPOSE 3000

# Configure an entry point, so we don't need to specify 
# "bundle exec" for each of our commands.
ENTRYPOINT ["bundle", "exec"]

# The main command to run when the container starts. Also 
# tell the Rails dev server to bind to all interfaces by 
# default.
CMD ["rails", "server", "-b", "0.0.0.0"]