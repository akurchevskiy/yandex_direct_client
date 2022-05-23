require 'date'

module YandexDirectClient
  class Client < BaseModel
    attr_accessor :account_quality
    attr_accessor :archived
    attr_accessor :client_id
    attr_accessor :client_info
    attr_accessor :country_id
    attr_accessor :created_at
    attr_accessor :currency
    attr_accessor :grants
    attr_accessor :bonuses
    attr_accessor :login
    attr_accessor :notification

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_quality' => :'AccountQuality',
        :'archived' => :'Archived',
        :'client_id' => :'ClientId',
        :'client_info' => :'ClientInfo',
        :'country_id' => :'CountryId',
        :'created_at' => :'CreatedAt',
        :'currency' => :'Currency',
        :'grants' => :'Grants',
        :'bonuses' => :'Bonuses',
        :'login' => :'Login',
        :'notification' => :'Notification'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_quality' => :'Object',
        :'archived' => :'Object',
        :'client_id' => :'Object',
        :'client_info' => :'Object',
        :'country_id' => :'Object',
        :'created_at' => :'Object',
        :'currency' => :'Object',
        :'grants' => :'Object',
        :'bonuses' => :'Object',
        :'login' => :'Object',
        :'notification' => :'Object'
      }
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def set_attributes(attributes = {})
      if attributes.key?(:'account_quality')
        self.account_quality = attributes[:'account_quality']
      end

      if attributes.key?(:'archived')
        self.archived = attributes[:'archived']
      end

      if attributes.key?(:'client_id')
        self.client_id = attributes[:'client_id']
      end

      if attributes.key?(:'client_info')
        self.client_info = attributes[:'client_info']
      end

      if attributes.key?(:'country_id')
        self.country_id = attributes[:'country_id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'grants')
        if (value = attributes[:'grants']).is_a?(Array)
          self.grants = value
        end
      end

      if attributes.key?(:'bonuses')
        self.bonuses = attributes[:'bonuses']
      end

      if attributes.key?(:'login')
        self.login = attributes[:'login']
      end

      if attributes.key?(:'notification')
        self.notification = attributes[:'notification']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      archived_validator = EnumAttributeValidator.new('Object', ['YES', 'NO'])
      return false unless archived_validator.valid?(@archived)
      currency_validator = EnumAttributeValidator.new('Object', ['RUB', 'BYN', 'CHF', 'EUR', 'KZT', 'TRY', 'UAH', 'USD'])
      return false unless currency_validator.valid?(@currency)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] archived Object to be assigned
    def archived=(archived)
      validator = EnumAttributeValidator.new('Object', ['YES', 'NO'])
      unless validator.valid?(archived)
        fail ArgumentError, "invalid value for \"archived\", must be one of #{validator.allowable_values}."
      end
      @archived = archived
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency)
      validator = EnumAttributeValidator.new('Object', ['RUB', 'BYN', 'CHF', 'EUR', 'KZT', 'TRY', 'UAH', 'USD'])
      unless validator.valid?(currency)
        fail ArgumentError, "invalid value for \"currency\", must be one of #{validator.allowable_values}."
      end
      @currency = currency
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_quality == o.account_quality &&
          archived == o.archived &&
          client_id == o.client_id &&
          client_info == o.client_info &&
          country_id == o.country_id &&
          created_at == o.created_at &&
          currency == o.currency &&
          grants == o.grants &&
          bonuses == o.bonuses &&
          login == o.login &&
          notification == o.notification
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_quality, archived, client_id, client_info, country_id, created_at, currency, grants, bonuses, login, notification].hash
    end
  end
end
