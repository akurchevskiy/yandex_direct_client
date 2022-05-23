require 'date'

module YandexDirectClient
  class CampaignNegativeKeywords < BaseModel
    attr_accessor :items

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'items' => :'Items'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'items' => :'Object'
      }
    end

    def set_attributes(attributes = {})
      if attributes.key?(:'items')
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
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
          items == o.items
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [items].hash
    end
  end
end
