
require 'base64'

module MessageMediaLookups
  # Utility class for basic authorization.
  class BasicAuth
    # Add basic authentication to the request.
    # @param [HttpRequest] The HttpRequest object to which authentication will
    # be added.
    def self.apply(http_request)
      username = Configuration.basic_auth_user_name
      password = Configuration.basic_auth_password
      if(username.length != 20 || password.length != 30)
        puts("~~~~~ It appears as though your REST API Keys are invalid. Please check and make sure they are correct. (Invalid Length) ~~~~~")
      end
      value = Base64.strict_encode64("#{username}:#{password}")
      header_value = "Basic #{value}"
      http_request.headers['Authorization'] = header_value
    end
  end
end
