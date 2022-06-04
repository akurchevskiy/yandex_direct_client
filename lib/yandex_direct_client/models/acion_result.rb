module YandexDirectClient
  class ActionResult < BaseModel
    attr_accessor :id
    attr_accessor :warnings
    attr_accessor :errors

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        id: :Id,
        warnings: :Warnings,
        errors: :Errors
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        id: 'Object',
        warnings: 'Array<ExceptionNotification>',
        errors: 'Array<ExceptionNotification>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def set_attributes(attributes = {})
      if attributes.key?(:id)
        self.id = attributes[:id]
      end

      if attributes.key?(:warnings)
        self.warnings = attributes[:warnings]
      end

      if attributes.key?(:errors)
        self.errors = attributes[:errors]
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
        id == o.id &&
        warnings == o.warnings &&
        errors == o.errors
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, warnings, errors].hash
    end
  end
end
