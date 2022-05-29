module YandexDirectClient
  class DynamicTextFeedAdGroup < BaseModel
    attr_accessor :source
    attr_accessor :feed_id
    attr_accessor :source_type
    attr_accessor :source_processing_status
    attr_accessor :autotargeting_categories

    SOURCE_TYPE_RETAIL_FEED = 'RETAIL_FEED'
    SOURCE_TYPE_UNKNOWN = 'UNKNOWN'

    SOURCE_STATUS_EMPTY_RESULT = 'EMPTY_RESULT'
    SOURCE_STATUS_PROCESSED = 'PROCESSED'
    SOURCE_STATUS_UNKNOWN = 'UNKNOWN'
    SOURCE_STATUS_UNPROCESSED = 'UNPROCESSED'

    SOURCE_TYPES = [SOURCE_TYPE_RETAIL_FEED, SOURCE_TYPE_UNKNOWN]
    SOURCE_STATUSES = [SOURCE_STATUS_EMPTY_RESULT, SOURCE_STATUS_PROCESSED,
                       SOURCE_STATUS_UNKNOWN, SOURCE_STATUS_UNPROCESSED]
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'source' => :'Source',
        :'feed_id' => :'FeedId',
        :'source_type' => :'SourceType',
        :'source_processing_status' => :'SourceProcessingStatus',
        :'autotargeting_categories' => :'AutotargetingCategories'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'source' => :'Object',
        :'feed_id' => :'Object',
        :'source_type' => :'Object',
        :'source_processing_status' => :'Object',
        :'autotargeting_categories' => :'Object'
      }
    end

    # @param [Hash] attributes Model attributes in the form of hash
    def set_attributes(attributes = {})
      if attributes.key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.key?(:'feed_id')
        self.feed_id = attributes[:'feed_id']
      end

      if attributes.key?(:'source_type')
        self.source_type = attributes[:'source_type']
      end

      if attributes.key?(:'source_processing_status')
        self.source_processing_status = attributes[:'source_processing_status']
      end

      if attributes.key?(:'autotargeting_categories')
        self.autotargeting_categories = attributes[:'autotargeting_categories']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      source_type_validator = EnumAttributeValidator.new('Object', SOURCE_TYPES)
      return false unless source_type_validator.valid?(@source_type)
      source_processing_status_validator = EnumAttributeValidator.new('Object', SOURCE_STATUSES)
      return false unless source_processing_status_validator.valid?(@source_processing_status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source_type Object to be assigned
    def source_type=(source_type)
      validator = EnumAttributeValidator.new('Object', SOURCE_TYPES)
      unless validator.valid?(source_type)
        fail ArgumentError, "invalid value for \"source_type\", must be one of #{validator.allowable_values}."
      end
      @source_type = source_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source_processing_status Object to be assigned
    def source_processing_status=(source_processing_status)
      validator = EnumAttributeValidator.new('Object', SOURCE_STATUSES)
      unless validator.valid?(source_processing_status)
        fail ArgumentError, "invalid value for \"source_processing_status\", must be one of #{validator.allowable_values}."
      end
      @source_processing_status = source_processing_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          source == o.source &&
          feed_id == o.feed_id &&
          source_type == o.source_type &&
          source_processing_status == o.source_processing_status &&
          autotargeting_categories == o.autotargeting_categories
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [source, feed_id, source_type, source_processing_status, autotargeting_categories].hash
    end
  end
end
