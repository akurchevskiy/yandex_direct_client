require 'date'

module YandexDirectClient
  class ClientGetItemRequestParamsSelectionCriteria < BaseModel
    attr_accessor :logins
    attr_accessor :archived

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'logins' => :'Logins',
        :'archived' => :'Archived'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'logins' => :'Object',
        :'archived' => :'Object'
      }
    end

    def set_attributes(attributes = {})
      if attributes.key?(:'logins')
        if (value = attributes[:'logins']).is_a?(Array)
          self.logins = value
        end
      end

      if attributes.key?(:'archived')
        self.archived = attributes[:'archived']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      archived_validator = EnumAttributeValidator.new('Object', ['YES', 'NO'])
      return false unless archived_validator.valid?(@archived)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] archived Object to be assigned
    def archived=(archived)
      validator = EnumAttributeValidator.new('Object', ['YES', 'NO'])
      unless validator.valid?(archived)
        fail ArgumentError, "invalid value for \"archived\", must be one of #{validator.allowable_values}."
      end
      @archived = archived
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          logins == o.logins &&
          archived == o.archived
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [logins, archived].hash
    end
  end
end
