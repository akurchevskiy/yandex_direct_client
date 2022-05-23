require 'date'

module YandexDirectClient
  class ClientNotificationSettings < BaseModel
    attr_accessor :option
    attr_accessor :value

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'option' => :'Option',
        :'value' => :'Value'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'option' => :'Object',
        :'value' => :'Object'
      }
    end

    def set_attributes(attributes = {})
      if attributes.key?(:'option')
        self.option = attributes[:'option']
      end

      if attributes.key?(:'value')
        self.value = attributes[:'value']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      option_validator = EnumAttributeValidator.new('Object', ['CORRECT_TYPOS_AUTOMATICALLY', 'DISPLAY_STORE_RATING', 'SHARED_ACCOUNT_ENABLED'])
      return false unless option_validator.valid?(@option)
      value_validator = EnumAttributeValidator.new('Object', ['YES', 'NO'])
      return false unless value_validator.valid?(@value)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] option Object to be assigned
    def option=(option)
      validator = EnumAttributeValidator.new('Object', ['CORRECT_TYPOS_AUTOMATICALLY', 'DISPLAY_STORE_RATING', 'SHARED_ACCOUNT_ENABLED'])
      unless validator.valid?(option)
        fail ArgumentError, "invalid value for \"option\", must be one of #{validator.allowable_values}."
      end
      @option = option
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] value Object to be assigned
    def value=(value)
      validator = EnumAttributeValidator.new('Object', ['YES', 'NO'])
      unless validator.valid?(value)
        fail ArgumentError, "invalid value for \"value\", must be one of #{validator.allowable_values}."
      end
      @value = value
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          option == o.option &&
          value == o.value
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [option, value].hash
    end
  end
end
