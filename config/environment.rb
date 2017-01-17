# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.delivery_method = :sendgrid_actionmailer
ActionMailer::Base.sendgrid_actionmailer_settings = {
  api_key: ENV['SENDGRID_API_KEY']
}

