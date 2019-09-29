# Load the Rails application.
require_relative 'application'


# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :address => 'smtp.sendgrid.net',
    :port => '587',
    :authentication => :plain,
    :user_name => ENV['SENDGRID_USERNAME'],
    :password => ENV['SENDGRID_PASSWORD'],
    :domain => 'heroku.com',
    :enable_starttls_auto => true
}
class Paperclip::Attachment
  default_options.merge!(
      storage: :s3,
      url: ":s3_domain_url",
      path: "/:class/:attachment/:id_partition/:style/:filename"
  )
end