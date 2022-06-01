module YandexDirectClient
  class Request < BaseModel
    attr_accessor :method
    attr_accessor :params

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        'method': 'method',
        params: 'params'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        method: 'Object',
        params: 'Params'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def set_attributes(attributes = {})
      if attributes.key?(:method)
        self.method = attributes[:method]
      end

      if attributes.key?(:params)
        self.params = attributes[:params]
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
        method == o.method &&
        params == o.params
    end

    def method=(method)
      @method = method
    end

    def params=(params)
      @params = params
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [method, params].hash
    end
  end
end