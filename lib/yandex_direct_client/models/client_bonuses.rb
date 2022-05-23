require 'date'

module YandexDirectClient
  class ClientBonuses < BaseModel
    attr_accessor :awaiting_bonus
    attr_accessor :awaiting_bonus_without_nds

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'awaiting_bonus' => :'AwaitingBonus',
        :'awaiting_bonus_without_nds' => :'AwaitingBonusWithoutNds'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'awaiting_bonus' => :'Object',
        :'awaiting_bonus_without_nds' => :'Object'
      }
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def set_attributes(attributes = {})
      if attributes.key?(:'awaiting_bonus')
        self.awaiting_bonus = attributes[:'awaiting_bonus']
      end

      if attributes.key?(:'awaiting_bonus_without_nds')
        self.awaiting_bonus_without_nds = attributes[:'awaiting_bonus_without_nds']
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
          awaiting_bonus == o.awaiting_bonus &&
          awaiting_bonus_without_nds == o.awaiting_bonus_without_nds
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [awaiting_bonus, awaiting_bonus_without_nds].hash
    end
  end
end
