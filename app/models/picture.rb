class Picture < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true
  has_attached_file :name, :styles => { :medium => "300x300#" },
        :default_url => "****",
        :storage => :s3,
        :bucket => '****',
        :s3_credentials => "#{RAILS_ROOT}/config/secrets.yml",
            :url => :s3_path_url,
            :path => ":image/:id/:style/:basename.:extension"
  validates_attachment_content_type :name, content_type: /\Aimage\/.*\Z/
end
