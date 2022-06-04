require 'date'

module YandexDirectClient
  class CampaignTimeTargetingHolidaysSchedule < BaseModel
    attr_accessor :suspend_on_holidays
    attr_accessor :bid_percent
    attr_accessor :start_hour
    attr_accessor :end_hour

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'suspend_on_holidays' => :'SuspendOnHolidays',
        :'bid_percent' => :'BidPercent',
        :'start_hour' => :'StartHour',
        :'end_hour' => :'EndHour'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'suspend_on_holidays' => :'Object',
        :'bid_percent' => :'Object',
        :'start_hour' => :'Object',
        :'end_hour' => :'Object'
      }
    end

    def set_attributes(attributes = {})
      if attributes.key?(:'suspend_on_holidays')
        self.suspend_on_holidays = attributes[:'suspend_on_holidays']
      end

      if attributes.key?(:'bid_percent')
        self.bid_percent = attributes[:'bid_percent']
      end

      if attributes.key?(:'start_hour')
        self.start_hour = attributes[:'start_hour']
      end

      if attributes.key?(:'end_hour')
        self.end_hour = attributes[:'end_hour']
      end
    end


    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      suspend_on_holidays_validator = EnumAttributeValidator.new('Object', ['YES', 'NO'])
      return false unless suspend_on_holidays_validator.valid?(@suspend_on_holidays)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] suspend_on_holidays Object to be assigned
    def suspend_on_holidays=(suspend_on_holidays)
      validator = EnumAttributeValidator.new('Object', ['YES', 'NO'])
      unless validator.valid?(suspend_on_holidays)
        fail ArgumentError, "invalid value for \"suspend_on_holidays\", must be one of #{validator.allowable_values}."
      end
      @suspend_on_holidays = suspend_on_holidays
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          suspend_on_holidays == o.suspend_on_holidays &&
          bid_percent == o.bid_percent &&
          start_hour == o.start_hour &&
          end_hour == o.end_hour
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [suspend_on_holidays, bid_percent, start_hour, end_hour].hash
    end
  end
end
