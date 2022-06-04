require 'date'

module YandexDirectClient
  class ClientNotificationRepresentatives < BaseModel
    attr_accessor :login
    attr_accessor :email
    attr_accessor :role

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'login' => :'Login',
        :'email' => :'Email',
        :'role' => :'Role'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'login' => :'Object',
        :'email' => :'Object',
        :'role' => :'Object'
      }
    end

    def set_attributes(attributes = {})
      if attributes.key?(:'login')
        self.login = attributes[:'login']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'role')
        self.role = attributes[:'role']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      role_validator = EnumAttributeValidator.new('Object', ['CHIEF', 'DELEGATE', 'UNKNOWN'])
      return false unless role_validator.valid?(@role)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] role Object to be assigned
    def role=(role)
      validator = EnumAttributeValidator.new('Object', ['CHIEF', 'DELEGATE', 'UNKNOWN'])
      unless validator.valid?(role)
        fail ArgumentError, "invalid value for \"role\", must be one of #{validator.allowable_values}."
      end
      @role = role
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          login == o.login &&
          email == o.email &&
          role == o.role
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [login, email, role].hash
    end
  end
end
