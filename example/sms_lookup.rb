require 'message_media_lookups'

# Configuration parameters and credentials
auth_user_name = 'API_KEY' # The username to use with basic/HMAC authentication
auth_password = 'API_SECRET' # The password to use with basic/HMAC authentication
use_hmac = true # Change this to true if you are using HMAC keys

client = MessageMediaLookups::MessageMediaLookupsClient.new(
    auth_user_name: auth_user_name,
    auth_password: auth_password,
    use_hmac: use_hmac
)

lookups_controller = client.lookups

phone_number = 'MOBILE_NUMBER'
options = 'carrier,type'

result = lookups_controller.get_lookup_a_phone_number(phone_number, options)
print result.inspect
