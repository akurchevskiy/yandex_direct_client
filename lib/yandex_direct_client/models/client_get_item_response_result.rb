require 'date'

module YandexDirectClient
  class ClientGetItemResponseResult < BaseModel
    attr_accessor :clients

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'clients' => :'Clients'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'clients' => :'Object'
      }
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def iset_attributes(attributes = {})

      if attributes.key?(:'clients')
        if (value = attributes[:'clients']).is_a?(Array)
          self.clients = value
        end
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
          clients == o.clients
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [clients].hash
    end
  end
end
