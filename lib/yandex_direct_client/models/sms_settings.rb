require 'date'

module YandexDirectClient
  class SmsSettings < BaseModel
    attr_accessor :events
    attr_accessor :time_from
    attr_accessor :time_to

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'events' => :'Events',
        :'time_from' => :'TimeFrom',
        :'time_to' => :'TimeTo'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'events' => :'Object',
        :'time_from' => :'Object',
        :'time_to' => :'Object'
      }
    end

    def set_attributes(attributes = {})
      if attributes.key?(:'events')
        if (value = attributes[:'events']).is_a?(Array)
          self.events = value
        end
      end

      if attributes.key?(:'time_from')
        self.time_from = attributes[:'time_from']
      end

      if attributes.key?(:'time_to')
        self.time_to = attributes[:'time_to']
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
          events == o.events &&
          time_from == o.time_from &&
          time_to == o.time_to
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [events, time_from, time_to].hash
    end
  end
end
