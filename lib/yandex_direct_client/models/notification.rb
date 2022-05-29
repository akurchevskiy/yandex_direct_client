module YandexDirectClient
  class Notification < BaseModel
    attr_accessor :sms_settings
    attr_accessor :email_settings

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'sms_settings' => :'SmsSettings',
        :'email_settings' => :'EmailSettings'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'sms_settings' => :'Object',
        :'email_settings' => :'Object'
      }
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def set_attributes(attributes = {})
      if attributes.key?(:'sms_settings')
        self.sms_settings = attributes[:'sms_settings']
      end

      if attributes.key?(:'email_settings')
        self.email_settings = attributes[:'email_settings']
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
          sms_settings == o.sms_settings &&
          email_settings == o.email_settings
    end

    def sms_settings=(sms_settings)
      @sms_settings = SmsSettings.build_from_hash(sms_settings)
    end

    def email_settings=(email_settings)
      @email_settings = EmailSettings.build_from_hash(email_settings)
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [sms_settings, email_settings].hash
    end
  end
end
