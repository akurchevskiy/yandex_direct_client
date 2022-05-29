module YandexDirectClient
  class DynamicTextAdGroup < BaseModel
    attr_accessor :domain_url
    attr_accessor :domain_url_processing_status
    attr_accessor :autotargeting_categories

    PROCESSING_STATUS_EMPTY_RESULT = 'EMPTY_RESULT'
    PROCESSING_STATUS_PROCESSED = 'PROCESSED'
    PROCESSING_STATUS_UNKNOWN = 'UNKNOWN'
    PROCESSING_STATUS_UNPROCESSED = 'UNPROCESSED'

    PROCESSING_STATUSES = [PROCESSING_STATUS_EMPTY_RESULT, PROCESSING_STATUS_PROCESSED,
                           PROCESSING_STATUS_UNKNOWN, PROCESSING_STATUS_UNPROCESSED]

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'domain_url' => :'DomainUrl',
        :'domain_url_processing_status' => :'DomainUrlProcessingStatus',
        :'autotargeting_categories' => :'AutotargetingCategories'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'domain_url' => :'Object',
        :'domain_url_processing_status' => :'Object',
        :'autotargeting_categories' => :'Object'
      }
    end

    # @param [Hash] attributes Model attributes in the form of hash
    def set_attributes(attributes = {})
      if attributes.key?(:'domain_url')
        self.domain_url = attributes[:'domain_url']
      end

      if attributes.key?(:'domain_url_processing_status')
        self.domain_url_processing_status = attributes[:'domain_url_processing_status']
      end

      if attributes.key?(:'autotargeting_categories')
        self.autotargeting_categories = attributes[:'autotargeting_categories']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      domain_url_processing_status_validator = EnumAttributeValidator.new('Object', PROCESSING_STATUSES)
      return false unless domain_url_processing_status_validator.valid?(@domain_url_processing_status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] domain_url_processing_status Object to be assigned
    def domain_url_processing_status=(domain_url_processing_status)
      validator = EnumAttributeValidator.new('Object', PROCESSING_STATUSES)
      unless validator.valid?(domain_url_processing_status)
        fail ArgumentError, "invalid value for \"domain_url_processing_status\", must be one of #{validator.allowable_values}."
      end
      @domain_url_processing_status = domain_url_processing_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          domain_url == o.domain_url &&
          domain_url_processing_status == o.domain_url_processing_status &&
          autotargeting_categories == o.autotargeting_categories
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [domain_url, domain_url_processing_status, autotargeting_categories].hash
    end
  end
end
