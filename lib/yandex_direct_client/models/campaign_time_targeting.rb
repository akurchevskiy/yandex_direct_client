require 'date'

module YandexDirectClient
  class CampaignTimeTargeting < BaseModel
    attr_accessor :schedule
    attr_accessor :consider_working_weekends
    attr_accessor :holidays_schedule

    VARIANT_YES = "YES"
    VARIANT_NO = "NO"
    CONSIDER_WORKING_VARIANTS = [VARIANT_NO, VARIANT_YES]

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'schedule' => :'Schedule',
        :'consider_working_weekends' => :'ConsiderWorkingWeekends',
        :'holidays_schedule' => :'HolidaysSchedule'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'schedule' => :'Object',
        :'consider_working_weekends' => :'Object',
        :'holidays_schedule' => :'Object'
      }
    end

    def set_attributes(attributes = {})
      if attributes.key?(:'schedule')
        self.schedule = attributes[:'schedule']
      end

      if attributes.key?(:'consider_working_weekends')
        self.consider_working_weekends = attributes[:'consider_working_weekends']
      end

      if attributes.key?(:'holidays_schedule')
        self.holidays_schedule = attributes[:'holidays_schedule']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      consider_working_weekends_validator = EnumAttributeValidator.new('Object', CONSIDER_WORKING_VARIANTS)
      return false unless consider_working_weekends_validator.valid?(@consider_working_weekends)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] consider_working_weekends Object to be assigned
    def consider_working_weekends=(consider_working_weekends)
      validator = EnumAttributeValidator.new('Object', CONSIDER_WORKING_VARIANTS)
      unless validator.valid?(consider_working_weekends)
        fail ArgumentError, "invalid value for \"consider_working_weekends\", must be one of #{validator.allowable_values}."
      end
      @consider_working_weekends = consider_working_weekends
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          schedule == o.schedule &&
          consider_working_weekends == o.consider_working_weekends &&
          holidays_schedule == o.holidays_schedule
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [schedule, consider_working_weekends, holidays_schedule].hash
    end
  end
end
