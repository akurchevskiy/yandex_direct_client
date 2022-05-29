module YandexDirectClient
  class AdsGroupsGetItemRequestParamsSelectionCriteria < BaseModel
    attr_accessor :campaign_ids
    attr_accessor :ids
    attr_accessor :types
    attr_accessor :statuses
    attr_accessor :serving_statuses
    attr_accessor :app_icon_statuses
    attr_accessor :negative_keyword_shared_set_ids

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'campaign_ids' => :'CampaignIds',
        :'ids' => :'Ids',
        :'types' => :'Types',
        :'statuses' => :'Statuses',
        :'serving_statuses' => :'ServingStatuses',
        :'app_icon_statuses' => :'AppIconStatuses',
        :'negative_keyword_shared_set_ids' => :'NegativeKeywordSharedSetIds'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'campaign_ids' => :'Object',
        :'ids' => :'Object',
        :'types' => :'Object',
        :'statuses' => :'Object',
        :'serving_statuses' => :'Object',
        :'app_icon_statuses' => :'Object',
        :'negative_keyword_shared_set_ids' => :'Object'
      }
    end

    # @param [Hash] attributes Model attributes in the form of hash
    def set_attributes(attributes = {})
      if attributes.key?(:'campaign_ids')
        if (value = attributes[:'campaign_ids']).is_a?(Array)
          self.campaign_ids = value
        end
      end

      if attributes.key?(:'ids')
        if (value = attributes[:'ids']).is_a?(Array)
          self.ids = value
        end
      end

      if attributes.key?(:'types')
        if (value = attributes[:'types']).is_a?(Array)
          self.types = value
        end
      end

      if attributes.key?(:'statuses')
        if (value = attributes[:'statuses']).is_a?(Array)
          self.statuses = value
        end
      end

      if attributes.key?(:'serving_statuses')
        if (value = attributes[:'serving_statuses']).is_a?(Array)
          self.serving_statuses = value
        end
      end

      if attributes.key?(:'app_icon_statuses')
        if (value = attributes[:'app_icon_statuses']).is_a?(Array)
          self.app_icon_statuses = value
        end
      end

      if attributes.key?(:'negative_keyword_shared_set_ids')
        if (value = attributes[:'negative_keyword_shared_set_ids']).is_a?(Array)
          self.negative_keyword_shared_set_ids = value
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
          campaign_ids == o.campaign_ids &&
          ids == o.ids &&
          types == o.types &&
          statuses == o.statuses &&
          serving_statuses == o.serving_statuses &&
          app_icon_statuses == o.app_icon_statuses &&
          negative_keyword_shared_set_ids == o.negative_keyword_shared_set_ids
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [campaign_ids, ids, types, statuses, serving_statuses, app_icon_statuses, negative_keyword_shared_set_ids].hash
    end
  end
end
