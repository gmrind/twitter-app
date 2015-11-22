ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address 								=> "smtp.sendgrid.net",
    :port 									=> "587",
    :domain 								=> "heroku.com",
    :user_name							=> "app43982594@heroku.com",
    :password 							=> "pltzcuxi1352",
    :authentication 				=> :plain,
    :enable_starttls_auto 	=> true
}