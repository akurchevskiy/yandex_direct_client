module YandexDirectClient
  class ItemCategory < BaseModel
    attr_accessor :category
    attr_accessor :value

    def self.attribute_map
      {
        category: :Category,
        value: :Value
      }
    end

    def self.openapi_types
      {
        category: 'Object',
        value: 'Object'

      }
    end

    def set_attributes(attributes = {})
      self.category = attributes[:category] if attributes.key?(:category)
      self.value = attributes[:value] if attributes.key?(:value)
    end

    def valid?
      true
    end

    def hash
      [category, value].hash
    end
  end
end