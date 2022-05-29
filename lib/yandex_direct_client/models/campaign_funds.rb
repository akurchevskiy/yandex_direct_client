module YandexDirectClient
  class CampaignFunds < BaseModel
    attr_accessor :sum
    attr_accessor :balance
    attr_accessor :balance_bonus
    attr_accessor :sum_available_for_transfer

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'sum' => :'Sum',
        :'balance' => :'Balance',
        :'balance_bonus' => :'BalanceBonus',
        :'sum_available_for_transfer' => :'SumAvailableForTransfer'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'sum' => :'Object',
        :'balance' => :'Object',
        :'balance_bonus' => :'Object',
        :'sum_available_for_transfer' => :'Object'
      }
    end

    def set_attributes(attributes = {})
      if attributes.key?(:'sum')
        self.sum = attributes[:'sum']
      end

      if attributes.key?(:'balance')
        self.balance = attributes[:'balance']
      end

      if attributes.key?(:'balance_bonus')
        self.balance_bonus = attributes[:'balance_bonus']
      end

      if attributes.key?(:'sum_available_for_transfer')
        self.sum_available_for_transfer = attributes[:'sum_available_for_transfer']
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
          sum == o.sum &&
          balance == o.balance &&
          balance_bonus == o.balance_bonus &&
          sum_available_for_transfer == o.sum_available_for_transfer
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [sum, balance, balance_bonus, sum_available_for_transfer].hash
    end
  end
end
