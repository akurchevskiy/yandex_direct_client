module YandexDirectClient
  class AdsGroupsGetItemResponseResult < BaseModel
    attr_accessor :ad_groups

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'ad_groups' => :'AdGroups'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'ad_groups' => :'Object'
      }
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def set_attributes(attributes = {})
      if attributes.key?(:'ad_groups')
        if (value = attributes[:'ad_groups']).is_a?(Array)
          self.ad_groups = value
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
          ad_groups == o.ad_groups
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [ad_groups].hash
    end
  end
end
