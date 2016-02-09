class Registration<ActiveRecord::Base

  belongs_to :puppy
  belongs_to :user

  validates :full_name, :email, :telephone, presence: true
  # allow different types of notifications 
  serialize :notification_params, Hash

  def paypal_url(return_path)
    values = {
      business: "kendra.ash32@gmail.com",
      cmd: "_xclick",
      upload: 1,
      return: "#{Rails.application.secrets.app_host}#{return_path}",
      invoice: id,
      amount: 300,
      item_name: puppy.name,
      item_number: puppy.id,
      quantity: '1'
    }
    "#{Rails.application.secrets.paypal_host}/cgi-bin/webscr?" + values.to_query
  end
end
