require 'date'

module YandexDirectClient
  class CampaignFundsSharedAccountFunds < BaseModel
    attr_accessor :refund
    attr_accessor :spend

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'refund' => :'Refund',
        :'spend' => :'Spend'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'refund' => :'Object',
        :'spend' => :'Object'
      }
    end

    def set_attributes(attributes = {})
      if attributes.key?(:'refund')
        self.refund = attributes[:'refund']
      end

      if attributes.key?(:'spend')
        self.spend = attributes[:'spend']
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
          refund == o.refund &&
          spend == o.spend
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [refund, spend].hash
    end
  end
end
