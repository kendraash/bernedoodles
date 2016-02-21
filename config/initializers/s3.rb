#config/initializers/s3.rb
 if Rails.env == "production"
     # get credentials from YML file
     S3_CREDENTIALS = Rails.root.join("config/secrets.yml")
 end
