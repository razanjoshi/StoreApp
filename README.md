# Project Title

This is a small test app called StoreAPP

![capture](https://user-images.githubusercontent.com/4223130/51780408-0a001580-20c3-11e9-9909-edcf5a3b6981.JPG)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.
A simple search button searches from the product name too.

I have made some dummy datas for the beginning thus please rake the seed file before you start.
```
bundle exec rake db:seed
```

### Prerequisites

Clone the repo
```
bundle install
rake db:migrate
rake db:test:prepare
```


## Running the tests

bundle exec rspec spec


## Acknowledgments

* You can use Mailtrap SMTP to trigger email after you have created a product once u logged in.
In config/environments/*.rb specify ActionMailer defaults for your development or staging servers:
```
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  :user_name => 'bb0fffe2c1a8ed',
  :password => 'a1a95796c98a57',
  :address => 'smtp.mailtrap.io',
  :domain => 'smtp.mailtrap.io',
  :port => '2525',
  :authentication => :cram_md5
}
```
