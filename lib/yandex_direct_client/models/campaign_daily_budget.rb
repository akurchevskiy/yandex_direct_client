require 'date'

module YandexDirectClient
  class CampaignDailyBudget < BaseModel
    attr_accessor :amount
    attr_accessor :mode

    MODE_STANDARD = "STANDARD"
    MODE_DISTRIBUTED = "DISTRIBUTED"
    MODES = [self::MODE_DISTRIBUTED, self::MODE_STANDARD]
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amount' => :'Amount',
        :'mode' => :'Mode'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'amount' => :'Object',
        :'mode' => :'Object'
      }
    end

  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def set_attributes(attributes = {})
      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'mode')
        self.mode = attributes[:'mode']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      mode_validator = EnumAttributeValidator.new('Object', self::MODES)
      return false unless mode_validator.valid?(@mode)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mode Object to be assigned
    def mode=(mode)
      validator = EnumAttributeValidator.new('Object', self::MODES)
      unless validator.valid?(mode)
        fail ArgumentError, "invalid value for \"mode\", must be one of #{validator.allowable_values}."
      end
      @mode = mode
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount == o.amount &&
          mode == o.mode
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [amount, mode].hash
    end
  end
end
