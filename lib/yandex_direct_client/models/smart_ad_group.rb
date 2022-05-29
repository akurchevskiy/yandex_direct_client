module YandexDirectClient
  class SmartAdGroup < BaseModel
    attr_accessor :feed_id
    attr_accessor :ad_title_source
    attr_accessor :ad_body_source

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'feed_id' => :'FeedId',
        :'ad_title_source' => :'AdTitleSource',
        :'ad_body_source' => :'AdBodySource'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'feed_id' => :'Object',
        :'ad_title_source' => :'Object',
        :'ad_body_source' => :'Object'
      }
    end

    # @param [Hash] attributes Model attributes in the form of hash
    def set_attributes(attributes = {})
      if attributes.key?(:'feed_id')
        self.feed_id = attributes[:'feed_id']
      end

      if attributes.key?(:'ad_title_source')
        self.ad_title_source = attributes[:'ad_title_source']
      end

      if attributes.key?(:'ad_body_source')
        self.ad_body_source = attributes[:'ad_body_source']
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
          feed_id == o.feed_id &&
          ad_title_source == o.ad_title_source &&
          ad_body_source == o.ad_body_source
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [feed_id, ad_title_source, ad_body_source].hash
    end
  end
end
