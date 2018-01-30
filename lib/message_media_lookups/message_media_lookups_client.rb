# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

module MessageMediaLookups
  #  message_media_lookups client class.
  class MessageMediaLookupsClient
    # Singleton access to lookups controller.
    # @return [LookupsController] Returns the controller instance.
    def lookups
      LookupsController.instance
    end

    # Returns the configuration class for easy access.
    # @return [Configuration] Returns the actual configuration class.
    def config
      Configuration
    end

    # Initializer with authentication and configuration parameters.
    def initialize(basic_auth_user_name: nil, basic_auth_password: nil)
      Configuration.basic_auth_user_name = basic_auth_user_name if
        basic_auth_user_name
      Configuration.basic_auth_password = basic_auth_password if
        basic_auth_password
    end
  end
end
