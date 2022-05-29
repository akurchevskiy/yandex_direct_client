module YandexDirectClient
  class EmailSettings < BaseModel
    attr_accessor :email
    attr_accessor :check_position_interval
    attr_accessor :warning_balance
    attr_accessor :send_account_news
    attr_accessor :send_warnings

    VARIANT_YES = "YES"
    VARIANT_NO = "NO"

    SEND_ACCOUNT_NEWS_VARIANTS = [VARIANT_YES, VARIANT_NO]
    SEND_WARNINGS_VARIANTS = [VARIANT_YES, VARIANT_NO]
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'email' => :'Email',
        :'check_position_interval' => :'CheckPositionInterval',
        :'warning_balance' => :'WarningBalance',
        :'send_account_news' => :'SendAccountNews',
        :'send_warnings' => :'SendWarnings'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'email' => :'Object',
        :'check_position_interval' => :'Object',
        :'warning_balance' => :'Object',
        :'send_account_news' => :'Object',
        :'send_warnings' => :'Object'
      }
    end

    def set_attributes(attributes = {})
      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'check_position_interval')
        self.check_position_interval = attributes[:'check_position_interval']
      end

      if attributes.key?(:'warning_balance')
        self.warning_balance = attributes[:'warning_balance']
      end

      if attributes.key?(:'send_account_news')
        self.send_account_news = attributes[:'send_account_news']
      end

      if attributes.key?(:'send_warnings')
        self.send_warnings = attributes[:'send_warnings']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      send_account_news_validator = EnumAttributeValidator.new('Object', SEND_ACCOUNT_NEWS_VARIANTS)
      return false unless send_account_news_validator.valid?(@send_account_news)
      send_warnings_validator = EnumAttributeValidator.new('Object', SEND_WARNINGS_VARIANTS)
      return false unless send_warnings_validator.valid?(@send_warnings)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] send_account_news Object to be assigned
    def send_account_news=(send_account_news)
      validator = EnumAttributeValidator.new('Object', SEND_ACCOUNT_NEWS_VARIANTS)
      unless validator.valid?(send_account_news)
        fail ArgumentError, "invalid value for \"send_account_news\", must be one of #{validator.allowable_values}."
      end
      @send_account_news = send_account_news
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] send_warnings Object to be assigned
    def send_warnings=(send_warnings)
      validator = EnumAttributeValidator.new('Object', SEND_WARNINGS_VARIANTS)
      unless validator.valid?(send_warnings)
        fail ArgumentError, "invalid value for \"send_warnings\", must be one of #{validator.allowable_values}."
      end
      @send_warnings = send_warnings
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          email == o.email &&
          check_position_interval == o.check_position_interval &&
          warning_balance == o.warning_balance &&
          send_account_news == o.send_account_news &&
          send_warnings == o.send_warnings
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [email, check_position_interval, warning_balance, send_account_news, send_warnings].hash
    end
  end
end
