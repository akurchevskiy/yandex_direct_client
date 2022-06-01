module YandexDirectClient
  class Properties < BaseModel
    attr_accessor :name
    attr_accessor :value

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        name: :Name,
        value: :Value
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        name: 'Object',
        value: 'Object'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def set_attributes(attributes = {})
      if attributes.key?(:name)
        self.name = attributes[:name]
      end

      if attributes.key?(:value)
        self.value = attributes[:value]
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
        value == o.value &&
        name == o.name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, value].hash
    end
  end
end