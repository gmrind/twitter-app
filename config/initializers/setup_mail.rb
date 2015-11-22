ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address 								=> "smtp.sendgrid.net",
    :port 									=> "587",
    :domain 								=> "heroku.com",
    :user_name							=> "app44191126@heroku.com",
    :password 							=> "jgwp6pjj0388",
    :authentication 				=> :plain,
    :enable_starttls_auto 	=> true
}