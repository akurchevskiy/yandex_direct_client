module YandexDirectClient
  class DynamicTextFeedAdGroupAutotargetingCategoriesItems < BaseModel
    attr_accessor :category
    attr_accessor :value

    CATEGORY_EXACT = 'EXACT'
    CATEGORY_ALTERNATIVE = 'ALTERNATIVE'
    CATEGORY_COMPETITOR = 'COMPETITOR'
    CATEGORY_BROADER = 'BROADER'
    CATEGORY_ACCESSORY = 'ACCESSORY'

    VALUE_YES = 'YES'
    VALUE_NO = 'NO'

    CATEGORIES = [CATEGORY_EXACT, CATEGORY_ALTERNATIVE, CATEGORY_COMPETITOR, CATEGORY_BROADER, CATEGORY_ACCESSORY]
    VALUES = [VALUE_NO, VALUE_YES]
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'category' => :'Category',
        :'value' => :'Value'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'category' => :'Object',
        :'value' => :'Object'
      }
    end

    # @param [Hash] attributes Model attributes in the form of hash
    def set_attributes(attributes = {})
      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'value')
        self.value = attributes[:'value']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      category_validator = EnumAttributeValidator.new('Object', CATEGORIES)
      return false unless category_validator.valid?(@category)
      value_validator = EnumAttributeValidator.new('Object', VALUES)
      return false unless value_validator.valid?(@value)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] category Object to be assigned
    def category=(category)
      validator = EnumAttributeValidator.new('Object', CATEGORIES)
      unless validator.valid?(category)
        fail ArgumentError, "invalid value for \"category\", must be one of #{validator.allowable_values}."
      end
      @category = category
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] value Object to be assigned
    def value=(value)
      validator = EnumAttributeValidator.new('Object', VALUES)
      unless validator.valid?(value)
        fail ArgumentError, "invalid value for \"value\", must be one of #{validator.allowable_values}."
      end
      @value = value
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          category == o.category &&
          value == o.value
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [category, value].hash
    end
  end
end
