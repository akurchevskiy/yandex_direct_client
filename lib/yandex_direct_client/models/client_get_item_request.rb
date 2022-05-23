require 'date'

module YandexDirectClient
  class ClientGetItemRequest < BaseModel
    attr_accessor :method
    attr_accessor :params
    attr_accessor :page

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'method' => :'method',
        :'params' => :'params',
        :'page' => :'Page'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'method' => :'Object',
        :'params' => :'Object',
        :'page' => :'Object'
      }
    end

    def set_attributes(attributes = {})
      if attributes.key?(:'method')
        self.method = attributes[:'method']
      end

      if attributes.key?(:'params')
        self.params = attributes[:'params']
      end

      if attributes.key?(:'page')
        self.page = attributes[:'page']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @method.nil?
        invalid_properties.push('invalid value for "method", method cannot be nil.')
      end

      if @params.nil?
        invalid_properties.push('invalid value for "params", params cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @method.nil?
      method_validator = EnumAttributeValidator.new('Object', ['get'])
      return false unless method_validator.valid?(@method)
      return false if @params.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] method Object to be assigned
    def method=(method)
      validator = EnumAttributeValidator.new('Object', ['get'])
      unless validator.valid?(method)
        fail ArgumentError, "invalid value for \"method\", must be one of #{validator.allowable_values}."
      end
      @method = method
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          method == o.method &&
          params == o.params &&
          page == o.page
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [method, params, page].hash
    end
  end
end
