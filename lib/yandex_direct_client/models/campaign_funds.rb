require 'date'

module YandexDirectClient
  class CampaignFunds < BaseModel
    attr_accessor :mode
    attr_accessor :campaign_funds
    attr_accessor :shared_account_funds

    MODE_CAMPAIGN_FUNDS = "CAMPAIGN_FUNDS"
    MODE_SHARED_ACCOUNT_FUNDS = "SHARED_ACCOUNT_FUNDS"
    MODES = [MODE_CAMPAIGN_FUNDS, MODE_SHARED_ACCOUNT_FUNDS]
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'mode' => :'Mode',
        :'campaign_funds' => :'CampaignFunds',
        :'shared_account_funds' => :'SharedAccountFunds'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'mode' => :'Object',
        :'campaign_funds' => :'Object',
        :'shared_account_funds' => :'Object'
      }
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def set_attributes(attributes = {})
      if attributes.key?(:'mode')
        self.mode = attributes[:'mode']
      end

      if attributes.key?(:'campaign_funds')
        self.campaign_funds = attributes[:'campaign_funds']
      end

      if attributes.key?(:'shared_account_funds')
        self.shared_account_funds = attributes[:'shared_account_funds']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      mode_validator = EnumAttributeValidator.new('Object', MODES)
      return false unless mode_validator.valid?(@mode)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mode Object to be assigned
    def mode=(mode)
      validator = EnumAttributeValidator.new('Object', MODES)
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
          mode == o.mode &&
          campaign_funds == o.campaign_funds &&
          shared_account_funds == o.shared_account_funds
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [mode, campaign_funds, shared_account_funds].hash
    end
  end
end
