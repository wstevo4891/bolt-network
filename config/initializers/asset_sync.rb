if defined?(AssetSync)
	AssetSync.configure do |config|
		config.fog_provider = ENV['FOG_PROVIDER']
		config.aws_access_key_id = ENV['AWS_ACCESS_KEY']
		config.aws_secret_access_key = ENV['AWS_SECRET_KEY']
		config.fog_directory = ENV['AWS_BUCKET']
		config.fog_region = ENV['FOG_REGION']

		config.existing_remote_files = "delete"

		config.gzip_compression = true

		config.manifest = true
	end
end