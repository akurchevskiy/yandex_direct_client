require 'date'

module YandexDirectClient
  class ClientNotificationRestrictions
    attr_accessor :element
    attr_accessor :value

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'element' => :'Element',
        :'value' => :'Value'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'element' => :'Object',
        :'value' => :'Object'
      }
    end

    def set_attributes(attributes = {})

      if attributes.key?(:'element')
        self.element = attributes[:'element']
      end

      if attributes.key?(:'value')
        self.value = attributes[:'value']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      element_validator = EnumAttributeValidator.new('Object', ['CAMPAIGNS_TOTAL_PER_CLIENT', 'CAMPAIGNS_UNARCHIVED_PER_CLIENT', 'ADGROUPS_TOTAL_PER_CAMPAIGN', 'ADS_TOTAL_PER_ADGROUP', 'KEYWORDS_TOTAL_PER_ADGROUP', 'AD_EXTENSIONS_TOTAL', 'STAT_REPORTS_TOTAL_IN_QUEUE', 'FORECAST_REPORTS_TOTAL_IN_QUEUE', 'WORDSTAT_REPORTS_TOTAL_IN_QUEUE', 'API_POINTS', 'GENERAL_DOMAIN_BLACKLIST_SIZE', 'VIDEO_DOMAIN_BLACKLIST_SIZE'])
      return false unless element_validator.valid?(@element)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] element Object to be assigned
    def element=(element)
      validator = EnumAttributeValidator.new('Object', ['CAMPAIGNS_TOTAL_PER_CLIENT', 'CAMPAIGNS_UNARCHIVED_PER_CLIENT', 'ADGROUPS_TOTAL_PER_CAMPAIGN', 'ADS_TOTAL_PER_ADGROUP', 'KEYWORDS_TOTAL_PER_ADGROUP', 'AD_EXTENSIONS_TOTAL', 'STAT_REPORTS_TOTAL_IN_QUEUE', 'FORECAST_REPORTS_TOTAL_IN_QUEUE', 'WORDSTAT_REPORTS_TOTAL_IN_QUEUE', 'API_POINTS', 'GENERAL_DOMAIN_BLACKLIST_SIZE', 'VIDEO_DOMAIN_BLACKLIST_SIZE'])
      unless validator.valid?(element)
        fail ArgumentError, "invalid value for \"element\", must be one of #{validator.allowable_values}."
      end
      @element = element
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          element == o.element &&
          value == o.value
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [element, value].hash
    end
  end
end
