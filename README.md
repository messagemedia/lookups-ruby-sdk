# MessageMedia Lookups Ruby SDK
[![Build Status](https://travis-ci.org/messagemedia/lookups-ruby-sdk.svg?branch=master)](https://travis-ci.org/messagemedia/lookups-ruby-sdk)
[![gem](https://img.shields.io/badge/gem-v1.1.0-red.svg)](https://rubygems.org/gems/messagemedia_lookups)

The MessageMedia Lookups API provides a number of endpoints for validating the phone numbers you’re sending to by checking their validity, type and carrier records.

## ⭐️ Installing via RubyGems
* Run the following command to install the SDK via RubyGems: 
```gem install messagemedia_lookups```

## 🎬 Get Started
It's easy to get started. Simply enter the API Key and secret you obtained from the [MessageMedia Developers Portal](https://developers.messagemedia.com) into the code snippet below and a mobile number you wish to send to.

### 👀 Lookup a number
```ruby
require 'message_media_lookups'

# Configuration parameters and credentials
auth_user_name = 'YOUR_API_KEY' # The username to use with basic/HMAC authentication
auth_password = 'YOUR_SECRET_KEY' # The password to use with basic/HMAC authentication
use_hmac = false # Change this to true if you are using HMAC keys

client = MessageMediaLookups::MessageMediaLookupsClient.new(
  auth_user_name: auth_user_name,
  auth_password: auth_password,
  use_hmac: use_hmac
)

lookups_controller = client.lookups

phone_number = 'YOUR_MOBILE_NUMBER'
options = 'carrier,type'

result = lookups_controller.get_lookup_a_phone_number(phone_number, options)
```

## 📕 Documentation
The Ruby SDK Documentation can be viewed [here](DOCUMENTATION.md)

## 😕 Need help?
Please contact developer support at developers@messagemedia.com or check out the developer portal at [developers.messagemedia.com](https://developers.messagemedia.com/)
