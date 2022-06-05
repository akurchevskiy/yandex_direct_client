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
