require 'date'

module YandexDirectClient
  class ClientNotification < BaseModel
    attr_accessor :lang
    attr_accessor :sms_phone_number
    attr_accessor :email
    attr_accessor :email_subscriptions
    attr_accessor :overdraft_sum_available
    attr_accessor :phone
    attr_accessor :representatives
    attr_accessor :restrictions
    attr_accessor :settings
    attr_accessor :type
    attr_accessor :vat_rate

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'lang' => :'Lang',
        :'sms_phone_number' => :'SmsPhoneNumber',
        :'email' => :'Email',
        :'email_subscriptions' => :'EmailSubscriptions',
        :'overdraft_sum_available' => :'OverdraftSumAvailable',
        :'phone' => :'Phone',
        :'representatives' => :'Representatives',
        :'restrictions' => :'Restrictions',
        :'settings' => :'Settings',
        :'type' => :'Type',
        :'vat_rate' => :'VatRate'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'lang' => :'Object',
        :'sms_phone_number' => :'Object',
        :'email' => :'Object',
        :'email_subscriptions' => :'Object',
        :'overdraft_sum_available' => :'Object',
        :'phone' => :'Object',
        :'representatives' => :'Object',
        :'restrictions' => :'Object',
        :'settings' => :'Object',
        :'type' => :'Object',
        :'vat_rate' => :'Object'
      }
    end

    def set_attributes(attributes = {})
      if attributes.key?(:'lang')
        self.lang = attributes[:'lang']
      end

      if attributes.key?(:'sms_phone_number')
        self.sms_phone_number = attributes[:'sms_phone_number']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'email_subscriptions')
        if (value = attributes[:'email_subscriptions']).is_a?(Array)
          self.email_subscriptions = value
        end
      end

      if attributes.key?(:'overdraft_sum_available')
        self.overdraft_sum_available = attributes[:'overdraft_sum_available']
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.key?(:'representatives')
        if (value = attributes[:'representatives']).is_a?(Array)
          self.representatives = value
        end
      end

      if attributes.key?(:'restrictions')
        if (value = attributes[:'restrictions']).is_a?(Array)
          self.restrictions = value
        end
      end

      if attributes.key?(:'settings')
        if (value = attributes[:'settings']).is_a?(Array)
          self.settings = value
        end
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'vat_rate')
        self.vat_rate = attributes[:'vat_rate']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      lang_validator = EnumAttributeValidator.new('Object', ['RU', 'UK', 'EN', 'TR'])
      return false unless lang_validator.valid?(@lang)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lang Object to be assigned
    def lang=(lang)
      validator = EnumAttributeValidator.new('Object', ['RU', 'UK', 'EN', 'TR'])
      unless validator.valid?(lang)
        fail ArgumentError, "invalid value for \"lang\", must be one of #{validator.allowable_values}."
      end
      @lang = lang
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          lang == o.lang &&
          sms_phone_number == o.sms_phone_number &&
          email == o.email &&
          email_subscriptions == o.email_subscriptions &&
          overdraft_sum_available == o.overdraft_sum_available &&
          phone == o.phone &&
          representatives == o.representatives &&
          restrictions == o.restrictions &&
          settings == o.settings &&
          type == o.type &&
          vat_rate == o.vat_rate
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [lang, sms_phone_number, email, email_subscriptions, overdraft_sum_available, phone, representatives, restrictions, settings, type, vat_rate].hash
    end
  end
end
