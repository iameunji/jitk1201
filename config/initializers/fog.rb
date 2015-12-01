CarrierWave.configure do |config|
  # config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAIY7DKBOP2NR36PVA',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-1'                  # optional, defaults to 'us-east-1'
    # host:                  's3.example.com',             # optional, defaults to nil
    # endpoint:              'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'jung-in'                          # required
  config.fog_public     = false                                        # optional, defaults to true
 # config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
end