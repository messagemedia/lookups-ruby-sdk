# MessageMedia Lookups Ruby SDK
The MessageMedia Lookups API provides a number of endpoints for validating the phone numbers you’re sending to by checking their validity, type and carrier records.

## ⭐️ Installing via RubyGems
* Download [messagemedia_lookups_sdk-1.0.0.gem](https://github.com/messagemedia/lookups-ruby-sdk/releases/download/1.0.0/message_media_lookups-1.0.0.gem)
* run `gem install messagemedia_lookups_sdk-1.0.0.gem`


## 🎬 Get Started
It's easy to get started. Simply enter the API Key and secret you obtained from the [MessageMedia Developers Portal](https://developers.messagemedia.com) into the code snippet below and a mobile number you wish to send to.

### 👀 Lookup a number
```ruby
require 'message_media_lookups'

# Configuration parameters and credentials
basic_auth_user_name = 'YOUR_API_KEY' # The username to use with basic authentication
basic_auth_password = 'YOUR_SECRET_KEY' # The password to use with basic authentication

client = MessageMediaLookups::MessageMediaLookupsClient.new(
  basic_auth_user_name: basic_auth_user_name,
  basic_auth_password: basic_auth_password
)

lookups_controller = client.lookups

phone_number = 'YOUR_MOBILE_NUMBER'
options = 'carrier,type'

result = lookups_controller.get_lookup_a_phone_number(phone_number, options)
```

## 📕 Documentation
The Ruby SDK Documentation can be viewed [here](DOCUMENTATION.md)

## 😕 Got Stuck?
Please contact developer support at developers@messagemedia.com or check out the developer portal at [developers.messagemedia.com](https://developers.messagemedia.com/)
