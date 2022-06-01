module YandexDirectClient
  class ResultData < BaseModel
    attr_accessor :currencies
    attr_accessor :add_results

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        currencies: :Currencies,
      add_results: :AddResults
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        currencies: 'Array<Currencies>',
        add_results: 'Array<ActionResult>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def set_attributes(attributes = {})
      if attributes.key?(:currencies)
        self.currencies = attributes[:currencies]
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
      [currencies].hash
    end
  end
end