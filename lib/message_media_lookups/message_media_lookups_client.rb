
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
    def initialize(auth_user_name: nil, auth_password: nil, use_hmac: false)
      if (use_hmac == false)
        Configuration.basic_auth_user_name = auth_user_name
        Configuration.basic_auth_password = auth_password
      else
        Configuration.hmac_auth_user_name = auth_user_name
        Configuration.hmac_auth_password = auth_password
      end
    end
  end
end
