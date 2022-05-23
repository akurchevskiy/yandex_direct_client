require 'date'

module YandexDirectClient
  class CampaignsGetItemRequestPage < BaseModel
    attr_accessor :limit
    attr_accessor :offset

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'limit' => :'Limit',
        :'offset' => :'Offset'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'limit' => :'Object',
        :'offset' => :'Object'
      }
    end

    def set_attributes(attributes = {})
      if attributes.key?(:'limit')
        self.limit = attributes[:'limit']
      end

      if attributes.key?(:'offset')
        self.offset = attributes[:'offset']
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
          limit == o.limit &&
          offset == o.offset
    end


    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [limit, offset].hash
    end
  end
end
