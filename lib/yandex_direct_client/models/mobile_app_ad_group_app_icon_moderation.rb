module YandexDirectClient
  class MobileAppAdGroupAppIconModeration < BaseModel
    attr_accessor :status
    attr_accessor :status_clarification

    STATUS_ACCEPTED = 'ACCEPTED'
    STATUS_MODERATION = 'MODERATION'
    STATUS_REJECTED = 'REJECTED'
    STATUSES = [STATUS_ACCEPTED, STATUS_MODERATION, STATUS_REJECTED]

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'status' => :'Status',
        :'status_clarification' => :'StatusClarification'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'status' => :'Object',
        :'status_clarification' => :'Object'
      }
    end

    # @param [Hash] attributes Model attributes in the form of hash
    def set_attributes(attributes = {})
      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'status_clarification')
        self.status_clarification = attributes[:'status_clarification']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      status_validator = EnumAttributeValidator.new('Object', STATUSES)
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('Object', STATUSES)
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          status == o.status &&
          status_clarification == o.status_clarification
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [status, status_clarification].hash
    end
  end
end
