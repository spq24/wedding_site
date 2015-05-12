CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:               'AWS',                        # required
    aws_access_key_id:      ENV['S3_KEY'],                        # required
    aws_secret_access_key:  ENV['S3_SECRET']                        # required
  }
  config.fog_directory  = 'allyqsurprise'                          # required
  config.fog_public     = false                                        # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>"max-age=#{365.day.to_i}"} # optional, defaults to {}
end