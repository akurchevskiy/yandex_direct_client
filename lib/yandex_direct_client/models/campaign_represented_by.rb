require 'date'

module YandexDirectClient
  class CampaignRepresentedBy < BaseModel
    attr_accessor :manager
    attr_accessor :agency

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'manager' => :'Manager',
        :'agency' => :'Agency'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'manager' => :'Object',
        :'agency' => :'Object'
      }
    end

    def set_attributes(attributes = {})
      if attributes.key?(:'manager')
        self.manager = attributes[:'manager']
      end

      if attributes.key?(:'agency')
        self.agency = attributes[:'agency']
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
          manager == o.manager &&
          agency == o.agency
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [manager, agency].hash
    end
  end
end
