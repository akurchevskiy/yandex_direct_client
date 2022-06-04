module YandexDirectClient
  class MobileAppAdGroup < BaseModel
    attr_accessor :store_url
    attr_accessor :target_device_type
    attr_accessor :target_carrier
    attr_accessor :target_operating_system_version
    attr_accessor :app_icon_moderation
    attr_accessor :app_operating_system_type
    attr_accessor :app_availability_status

    TARGET_CARRIER_WI_FI_ONLY = 'WI_FI_ONLY'
    TARGET_CARRIER_WIFI_CELLULAR = 'WI_FI_AND_CELLULAR'

    OPERATING_SYSTEM_IOS = 'IOS'
    OPERATING_SYSTEM_ANDROID = 'ANDROID'
    OPERATING_SYSTEM_UNKNOWN = 'OS_TYPE_UNKNOWN'

    STATUS_UNPROCESSED = 'UNPROCESSED'
    STATUS_AVAILABLE = 'AVAILABLE'
    STATUS_NOT_AVAILABLE = 'NOT_AVAILABLE'

    TARGET_CARRIERS = [TARGET_CARRIER_WI_FI_ONLY, TARGET_CARRIER_WIFI_CELLULAR]
    OPERATING_SYSTEMS = [OPERATING_SYSTEM_IOS, OPERATING_SYSTEM_ANDROID, OPERATING_SYSTEM_UNKNOWN]
    STATUSES = [STATUS_UNPROCESSED, STATUS_AVAILABLE, STATUS_NOT_AVAILABLE]

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'store_url' => :'StoreUrl',
        :'target_device_type' => :'TargetDeviceType',
        :'target_carrier' => :'TargetCarrier',
        :'target_operating_system_version' => :'TargetOperatingSystemVersion',
        :'app_icon_moderation' => :'AppIconModeration',
        :'app_operating_system_type' => :'AppOperatingSystemType',
        :'app_availability_status' => :'AppAvailabilityStatus'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'store_url' => :'Object',
        :'target_device_type' => :'Object',
        :'target_carrier' => :'Object',
        :'target_operating_system_version' => :'Object',
        :'app_icon_moderation' => :'Object',
        :'app_operating_system_type' => :'Object',
        :'app_availability_status' => :'Object'
      }
    end

    # @param [Hash] attributes Model attributes in the form of hash
    def set_attributes(attributes = {})
      if attributes.key?(:'store_url')
        self.store_url = attributes[:'store_url']
      end

      if attributes.key?(:'target_device_type')
        if (value = attributes[:'target_device_type']).is_a?(Array)
          self.target_device_type = value
        end
      end

      if attributes.key?(:'target_carrier')
        self.target_carrier = attributes[:'target_carrier']
      end

      if attributes.key?(:'target_operating_system_version')
        self.target_operating_system_version = attributes[:'target_operating_system_version']
      end

      if attributes.key?(:'app_icon_moderation')
        self.app_icon_moderation = attributes[:'app_icon_moderation']
      end

      if attributes.key?(:'app_operating_system_type')
        self.app_operating_system_type = attributes[:'app_operating_system_type']
      end

      if attributes.key?(:'app_availability_status')
        self.app_availability_status = attributes[:'app_availability_status']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      target_carrier_validator = EnumAttributeValidator.new('Object', TARGET_CARRIERS)
      return false unless target_carrier_validator.valid?(@target_carrier)
      app_operating_system_type_validator = EnumAttributeValidator.new('Object', OPERATING_SYSTEMS)
      return false unless app_operating_system_type_validator.valid?(@app_operating_system_type)
      app_availability_status_validator = EnumAttributeValidator.new('Object', STATUSES)
      return false unless app_availability_status_validator.valid?(@app_availability_status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] target_carrier Object to be assigned
    def target_carrier=(target_carrier)
      validator = EnumAttributeValidator.new('Object', TARGET_CARRIERS)
      unless validator.valid?(target_carrier)
        fail ArgumentError, "invalid value for \"target_carrier\", must be one of #{validator.allowable_values}."
      end
      @target_carrier = target_carrier
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] app_operating_system_type Object to be assigned
    def app_operating_system_type=(app_operating_system_type)
      validator = EnumAttributeValidator.new('Object', OPERATING_SYSTEMS)
      unless validator.valid?(app_operating_system_type)
        fail ArgumentError, "invalid value for \"app_operating_system_type\", must be one of #{validator.allowable_values}."
      end
      @app_operating_system_type = app_operating_system_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] app_availability_status Object to be assigned
    def app_availability_status=(app_availability_status)
      validator = EnumAttributeValidator.new('Object', STATUSES)
      unless validator.valid?(app_availability_status)
        fail ArgumentError, "invalid value for \"app_availability_status\", must be one of #{validator.allowable_values}."
      end
      @app_availability_status = app_availability_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          store_url == o.store_url &&
          target_device_type == o.target_device_type &&
          target_carrier == o.target_carrier &&
          target_operating_system_version == o.target_operating_system_version &&
          app_icon_moderation == o.app_icon_moderation &&
          app_operating_system_type == o.app_operating_system_type &&
          app_availability_status == o.app_availability_status
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [store_url, target_device_type, target_carrier, target_operating_system_version, app_icon_moderation, app_operating_system_type, app_availability_status].hash
    end
  end
end
