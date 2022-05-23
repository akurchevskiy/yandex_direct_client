require 'date'

module YandexDirectClient
  class ClientGetItemRequestParams < BaseModel
    attr_accessor :selection_criteria
    attr_accessor :field_names

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'selection_criteria' => :'SelectionCriteria',
        :'field_names' => :'FieldNames'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'selection_criteria' => :'Object',
        :'field_names' => :'Object'
      }
    end

    def set_attributes(attributes = {})

      if attributes.key?(:'selection_criteria')
        self.selection_criteria = attributes[:'selection_criteria']
      end

      if attributes.key?(:'field_names')
        if (value = attributes[:'field_names']).is_a?(Array)
          self.field_names = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @selection_criteria.nil?
        invalid_properties.push('invalid value for "selection_criteria", selection_criteria cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @selection_criteria.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          selection_criteria == o.selection_criteria &&
          field_names == o.field_names
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [selection_criteria, field_names].hash
    end
  end
end
