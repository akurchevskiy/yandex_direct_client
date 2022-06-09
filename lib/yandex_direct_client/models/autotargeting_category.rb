module YandexDirectClient
  class AutotargetingCategory < BaseModel
    attr_accessor :items 
    
    def self.attribute_map
      {
        items: :Items
      }
    end
    
    # Attribute type mapping.
    def self.openapi_types
      {
        items: 'Array<ItemCategory>'
      }
    end
    
    def set_attributes(attributes = {})
      if attributes.key?(:items)
        if (value = attributes[:items]).is_a?(Array)
          self.items = value
        end
      end
    end

    def valid?
      true
    end

    def hash
      [items].hash
    end
  end
end
