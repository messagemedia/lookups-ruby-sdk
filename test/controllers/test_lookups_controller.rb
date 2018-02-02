# This file was automatically generated for MessageMedia by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'controller_test_base'

class LookupsControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.lookups
  end

  # Use the Lookups API to find information about a phone number.
  #A request to the lookups API has the following format:
  #```/v1/lookups/phone/{phone_number}?options={carrier,type}```
  #The `{phone_number}` parameter is a required field and should be set to the phone number to be looked up.
  #The options query parameter can also be used to request additional information about the phone number.
  #By default, a request will only return the `country_code` and `phone_number` properties in the response.
  #To request details about the the carrier, include `carrier` as a value of the options parameter.
  #To request details about the type, include `type` as a value of the options parameter. To pass multiple values
  #to the options parameter, use a comma separated list, i.e. `carrier,type`.
  #A successful request to the lookups endpoint will return a response body as follows:
  #```json
  #{
  #  "country_code": "AU",
  #  "phone_number": "+61491570156",
  #  "type": "mobile",
  #  "carrier": {
  #    "name": "Telstra"
  #  }
  #}
  #```
  #Each property in the response body is defined as follows:
  #- ```country_code``` ISO ALPHA 2 country code of the phone number
  #- ```phone_number``` E.164 formatted phone number
  #- ```type``` The type of number. This can be ```"mobile"``` or ```"landline"```
  #- ```carrier``` Holds information about the specific carrier (if available)
  #  - ```name``` The carrier's name as reported by the network
  def test_lookup_a_phone_number()
    # Parameters for the API call
    phone_number = '+61491570156'
    options = 'carrier,type'

    # Perform the API call through the SDK function
    result = self.class.controller.get_lookup_a_phone_number(phone_number, options)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = nil

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    assert_equal('{"carrier":{"name":"AU Landline Carrier"},"country_code":"AU","phone_number":"+61491570156","type":"MOBILE"}', @response_catcher.response.raw_body)
  end

end
