require 'date'

module YandexDirectClient
  class CampaignsGetItemResponseResult < BaseModel
    attr_accessor :campaigns

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'campaigns' => :'Campaigns'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'campaigns' => :'Array<Campaigns>'
      }
    end

    def set_attributes(attributes = {})
      if attributes.key?(:'campaigns')
        if (value = attributes[:'campaigns']).is_a?(Array)
          self.campaigns = value
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
          campaigns == o.campaigns
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [campaigns].hash
    end
  end
end
