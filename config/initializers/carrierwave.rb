if Rails.env.test?
  CarrierWave.configure do |config|
    config.storage = :file
    config.enable_processing = false
  end

  PhotoUploader

  CarrierWave::Uploader::Base.descendants.each do |klass|
  	next if klass.anonymous?
  	klass.class_eval do
  	  def cache_dir
  	  	"#{Rails.root}/spec/support/uploads/tmp"
  	  end

  	  def store_dir
  	  	"#{Rails.root}/spec/support/uploads/#{mounted_as}/#{model}"
  	  end
  	end
  end
end

if Rails.env.development? || Rails.env.production?
  CarrierWave.configure do |config|
    # config.storage = :file
    # config.enable_processing = false
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV["AWS_ACCESS_KEY"],
      aws_secret_access_key: ENV["AWS_SECRET_KEY"],
      region: 'us-west-2'
    }
    config.fog_directory = ENV["AWS_BUCKET"]
    config.fog_public = true
  end
end
