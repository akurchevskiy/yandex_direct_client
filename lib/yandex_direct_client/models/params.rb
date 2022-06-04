module YandexDirectClient
  class Params < BaseModel
    attr_accessor :dictionary_names
    attr_accessor :ad_groups
    attr_accessor :selection_criteria
    attr_accessor :field_names

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        dictionary_names: :DictionaryNames,
        ad_groups: :AdGroups,
        selection_criteria: :SelectionCriteria,
        field_names: :FieldNames
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        dictionary_names: 'Array',
        ad_groups: 'Array<AdGroup>',
        selection_criteria: 'SelectionCriteria',
        field_names: 'Object'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def set_attributes(attributes = {})
      if attributes.key?(:dictionary_names)
        self.dictionary_names = attributes[:dictionary_names]
      end
      if attributes.key?(:ad_groups)
        self.ad_groups = attributes[:ad_groups]
      end
    end

    def dictionary_names=(dictionary_names)
      @dictionary_names = dictionary_names
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
        dictionary_names == o.dictionary_names
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [dictionary_names].hash
    end
  end
end
