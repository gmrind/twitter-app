ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => "587",
    :domain => "gmail.com",
    :user_name => "gm.tweettoo@gmail.com",
    :password => "gmrind.786",
    :authentication => "plain",
    :enable_starttls_auto => true
}