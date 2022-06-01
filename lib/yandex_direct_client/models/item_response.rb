require 'date'

module YandexDirectClient
  class ItemResponse < BaseModel
    attr_accessor :result
    attr_accessor :limited_by

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        result: :result,
        limited_by: :LimitedBy
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        result: 'ResultData',
        limited_by: 'Object'
      }
    end

    def set_attributes(attributes = {})
      if attributes.key?(:result)
        self.result = attributes[:result]
      end

      if attributes.key?(:limited_by)
        self.limited_by = attributes[:limited_by]
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      p '-------->'
      p '!Log ClientGetItemResponse.build_from_hash'
      p "#{nil unless attributes.is_a?(Hash)}"
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        p "#{key} => #{type}"
        p "Check Array<>: #{type =~ /\AArray<(.*)>/i}"
        p "Check is array #{attributes[self.class.attribute_map[key]].is_a?(Array)}"
        p "Check not nil: #{!attributes[self.class.attribute_map[key]].nil?}"
        p " check of nil:  #{attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)}"
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          p "key => #{key}"
          self.send("#{key}=", nil)
        end
      end
      p '<----------------'
      self
    end


    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          result == o.result &&
          limited_by == o.limited_by
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [result, limited_by].hash
    end
  end
end
