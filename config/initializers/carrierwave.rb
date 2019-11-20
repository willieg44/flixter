CarrierWave.configure do |config|
    config.storage    = :aws
    config.aws_bucket = ENV["AWS_BUCKET"] # for AWS-side bucket access permissions config, see section below
    config.aws_acl    = 'public-read'
  
    config.aws_credentials = {
      access_key_id:     ENV["AWS_ACCESS_KEY"],
      secret_access_key: ENV["AWS_SECRET_KEY"],
      region:            ENV["AWS_REGION"], 
    }
  
   
  end