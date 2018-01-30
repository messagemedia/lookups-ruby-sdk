# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

module MessageMediaLookups
  # LookupsController
  class LookupsController < BaseController
    @instance = LookupsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Use the Lookups API to find information about a phone number.
    # A request to the lookups API has the following format:
    # ```/v1/lookups/phone/{phone_number}?options={carrier,type}```
    # The `{phone_number}` parameter is a required field and should be set to
    # the phone number to be looked up.
    # The options query parameter can also be used to request additional
    # information about the phone number.
    # By default, a request will only return the `country_code` and
    # `phone_number` properties in the response.
    # To request details about the the carrier, include `carrier` as a value of
    # the options parameter.
    # To request details about the type, include `type` as a value of the
    # options parameter. To pass multiple values
    # to the options parameter, use a comma separated list, i.e. `carrier,type`.
    # A successful request to the lookups endpoint will return a response body
    # as follows:
    # ```json
    # {
    #   "country_code": "AU",
    #   "phone_number": "+61491570156",
    #   "type": "mobile",
    #   "carrier": {
    #     "name": "Telstra"
    #   }
    # }
    # ```
    # Each property in the response body is defined as follows:
    # - ```country_code``` ISO ALPHA 2 country code of the phone number
    # - ```phone_number``` E.164 formatted phone number
    # - ```type``` The type of number. This can be ```"mobile"``` or
    # ```"landline"```
    # - ```carrier``` Holds information about the specific carrier (if
    # available)
    #   - ```name``` The carrier's name as reported by the network
    # @param [String] phone_number Required parameter: The phone number to be
    # looked up
    # @param [String] options Optional parameter: Example:
    # @return LookupAPhoneNumberResponse response from the API call
    def get_lookup_a_phone_number(phone_number,
                                  options = nil)
      begin
        @logger.info("get_lookup_a_phone_number called.")
        # Prepare query url.
        @logger.info("Preparing query URL for get_lookup_a_phone_number.")
        _query_builder = Configuration.base_uri.dup
        _query_builder << '/v1/lookups/phone/{phone_number}'
        _query_builder = APIHelper.append_url_with_template_parameters(
          _query_builder,
          'phone_number' => phone_number
        )
        _query_builder = APIHelper.append_url_with_query_parameters(
          _query_builder,
          {
            'options' => options
          },
          array_serialization: Configuration.array_serialization
        )
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for get_lookup_a_phone_number.")
        _headers = {
          'accept' => 'application/json'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for get_lookup_a_phone_number.')
        _request = @http_client.get(
          _query_url,
          headers: _headers
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_lookup_a_phone_number')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for get_lookup_a_phone_number.")
        if _context.response.status_code == 404
          raise APIException.new(
            'Number was invalid',
            _context
          )
        end
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for get_lookup_a_phone_number.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        LookupAPhoneNumberResponse.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end
  end
end
