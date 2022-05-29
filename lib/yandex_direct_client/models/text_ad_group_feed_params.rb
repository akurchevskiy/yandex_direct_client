module YandexDirectClient
  class TextAdGroupFeedParams < BaseModel
    attr_accessor :feed_id
    attr_accessor :feed_category_ids

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'feed_id' => :'FeedId',
        :'feed_category_ids' => :'FeedCategoryIds'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'feed_id' => :'Object',
        :'feed_category_ids' => :'Object'
      }
    end
  

    # @param [Hash] attributes Model attributes in the form of hash
    def set_attributes(attributes = {})
      if attributes.key?(:'feed_id')
        self.feed_id = attributes[:'feed_id']
      end

      if attributes.key?(:'feed_category_ids')
        self.feed_category_ids = attributes[:'feed_category_ids']
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
          feed_category_ids == o.feed_category_ids
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [feed_id, feed_category_ids].hash
    end
  end
end
