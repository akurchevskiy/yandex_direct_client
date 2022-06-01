module YandexDirectClient
  class ExceptionNotification < BaseModel
    attr_accessor :code
    attr_accessor :message
    attr_accessor :details

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        code: :Code,
        message: :Message,
        details: :Details
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        code: 'Object',
        message: 'Object',
        details: 'Object'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def set_attributes(attributes = {})
      if attributes.key?(:code)
        self.code = attributes[:code]
      end

      if attributes.key?(:message)
        self.message = attributes[:message]
      end

      if attributes.key?(:details)
        self.details = attributes[:details]
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
        code == o.code &&
        message == o.message &&
        details == o.details
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [code, message, details].hash
    end
  end
end