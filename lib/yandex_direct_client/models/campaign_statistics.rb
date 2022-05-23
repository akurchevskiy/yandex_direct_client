require 'date'

module YandexDirectClient
  class CampaignStatistics < BaseModel
    attr_accessor :clicks
    attr_accessor :impressions

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'clicks' => :'Clicks',
        :'impressions' => :'Impressions'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'clicks' => :'Object',
        :'impressions' => :'Object'
      }
    end

    def set_attributes(attributes = {})
      if attributes.key?(:'clicks')
        self.clicks = attributes[:'clicks']
      end

      if attributes.key?(:'impressions')
        self.impressions = attributes[:'impressions']
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
          clicks == o.clicks &&
          impressions == o.impressions
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [clicks, impressions].hash
    end
  end
end
