module YandexDirectClient
  class Currencies < BaseModel
    attr_accessor :currency
    attr_accessor :properties

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        currency: :Currency,
        properties: :Properties
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        currency: 'Object',
        properties: 'Array<Properties>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def set_attributes(attributes = {})
      if attributes.key?(:properties)
        self.properties = attributes[:properties]
      end

      if attributes.key?(:currency)
        self.currency = attributes[:currency]
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    def currencies=(currencies)
      @currencies = currencies
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
        currencies == o.currencies
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [currency, properties].hash
    end
  end
end
