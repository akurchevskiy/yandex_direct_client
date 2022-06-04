require 'date'

module YandexDirectClient
  class Grand < BaseModel
    attr_accessor :privilege
    attr_accessor :value
    attr_accessor :agency

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'privilege' => :'Privilege',
        :'value' => :'Value',
        :'agency' => :'Agency'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'privilege' => :'Object',
        :'value' => :'Object',
        :'agency' => :'Object'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def set_attributes(attributes = {})
      if attributes.key?(:'privilege')
        self.privilege = attributes[:'privilege']
      end

      if attributes.key?(:'value')
        self.value = attributes[:'value']
      end

      if attributes.key?(:'agency')
        self.agency = attributes[:'agency']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      privilege_validator = EnumAttributeValidator.new('Object', ['EDIT_CAMPAIGNS', 'IMPORT_XLS', 'TRANSFER_MONEY'])
      return false unless privilege_validator.valid?(@privilege)
      value_validator = EnumAttributeValidator.new('Object', ['YES', 'NO'])
      return false unless value_validator.valid?(@value)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] privilege Object to be assigned
    def privilege=(privilege)
      validator = EnumAttributeValidator.new('Object', ['EDIT_CAMPAIGNS', 'IMPORT_XLS', 'TRANSFER_MONEY'])
      unless validator.valid?(privilege)
        fail ArgumentError, "invalid value for \"privilege\", must be one of #{validator.allowable_values}."
      end
      @privilege = privilege
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
          privilege == o.privilege &&
          value == o.value &&
          agency == o.agency
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [privilege, value, agency].hash
    end
  end
end
