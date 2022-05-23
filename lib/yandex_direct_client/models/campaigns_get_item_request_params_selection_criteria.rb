require 'date'

module YandexDirectClient
  class CampaignsGetItemRequestParamsSelectionCriteria < BaseModel
    attr_accessor :ids
    attr_accessor :types
    attr_accessor :states
    attr_accessor :statuses
    attr_accessor :statuses_payment

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'ids' => :'Ids',
        :'types' => :'Types',
        :'states' => :'States',
        :'statuses' => :'Statuses',
        :'statuses_payment' => :'StatusesPayment'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'ids' => :'Object',
        :'types' => :'Object',
        :'states' => :'Object',
        :'statuses' => :'Object',
        :'statuses_payment' => :'Object'
      }
    end

    def set_attributes(attributes = {})
      if attributes.key?(:'ids')
        if (value = attributes[:'ids']).is_a?(Array)
          self.ids = value
        end
      end

      if attributes.key?(:'types')
        if (value = attributes[:'types']).is_a?(Array)
          self.types = value
        end
      end

      if attributes.key?(:'states')
        if (value = attributes[:'states']).is_a?(Array)
          self.states = value
        end
      end

      if attributes.key?(:'statuses')
        if (value = attributes[:'statuses']).is_a?(Array)
          self.statuses = value
        end
      end

      if attributes.key?(:'statuses_payment')
        if (value = attributes[:'statuses_payment']).is_a?(Array)
          self.statuses_payment = value
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
          ids == o.ids &&
          types == o.types &&
          states == o.states &&
          statuses == o.statuses &&
          statuses_payment == o.statuses_payment
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [ids, types, states, statuses, statuses_payment].hash
    end
  end
end
