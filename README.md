# Project Title

This is a small test app called StoreAPP

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Clone the repo
Bundle install
rake db:mmigrate
rake db:test:prepare

```
Give examples
```


## Running the tests

bundle exec rspec spec


## Acknowledgments

* You can use mailtrap SMTP to trigger email after you have created a product once u logged in.
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
