
module MessageMediaLookups
  # LookupAPhoneNumberResponse Model.
  class LookupAPhoneNumberResponse < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :country_code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :phone_number

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :carrier

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['country_code'] = 'country_code'
      @_hash['phone_number'] = 'phone_number'
      @_hash['type'] = 'type'
      @_hash['carrier'] = 'carrier'
      @_hash
    end

    def initialize(country_code = nil,
                   phone_number = nil,
                   type = nil,
                   carrier = nil)
      @country_code = country_code
      @phone_number = phone_number
      @type = type
      @carrier = carrier
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      country_code = hash['country_code']
      phone_number = hash['phone_number']
      type = hash['type']
      carrier = hash['carrier']

      # Create object from extracted values.
      LookupAPhoneNumberResponse.new(country_code,
                                     phone_number,
                                     type,
                                     carrier)
    end
  end
end
