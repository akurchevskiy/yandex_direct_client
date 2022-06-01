module YandexDirectClient
  class AdsGroupsGetItemRequestParams < BaseModel
    attr_accessor :selection_criteria
    attr_accessor :field_names
    attr_accessor :mobile_app_ad_group_field_names
    attr_accessor :dynamic_text_ad_group_field_names
    attr_accessor :dynamic_text_feed_ad_group_field_names
    attr_accessor :smart_ad_group_field_names
    attr_accessor :text_ad_group_feed_params_field_names
    attr_accessor :page
    attr_accessor :ad_groups

    FIELD_NAMES = ["CampaignId", "Id", "Name", "NegativeKeywords", "NegativeKeywordSharedSetIds", "RegionIds",
                   "RestrictedRegionIds", "ServingStatus", "Status", "Subtype", "TrackingParams", "Type"]

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'selection_criteria' => :'SelectionCriteria',
        :'field_names' => :'FieldNames',
        :'mobile_app_ad_group_field_names' => :'MobileAppAdGroupFieldNames',
        :'dynamic_text_ad_group_field_names' => :'DynamicTextAdGroupFieldNames',
        :'dynamic_text_feed_ad_group_field_names' => :'DynamicTextFeedAdGroupFieldNames',
        :'smart_ad_group_field_names' => :'SmartAdGroupFieldNames',
        :'text_ad_group_feed_params_field_names' => :'TextAdGroupFeedParamsFieldNames',
        :'ad_groups' => :'AdGroups',
        :'page' => :'Page'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'selection_criteria' => :'Object',
        :'field_names' => :'Object',
        :'mobile_app_ad_group_field_names' => :'Object',
        :'dynamic_text_ad_group_field_names' => :'Object',
        :'dynamic_text_feed_ad_group_field_names' => :'Object',
        :'smart_ad_group_field_names' => :'Object',
        :'text_ad_group_feed_params_field_names' => :'Object',
        :'ad_groups' => :'Array<AdGroups>',
        :'page' => :'Object'
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

      if attributes.key?(:'mobile_app_ad_group_field_names')
        if (value = attributes[:'mobile_app_ad_group_field_names']).is_a?(Array)
          self.mobile_app_ad_group_field_names = value
        end
      end

      if attributes.key?(:'dynamic_text_ad_group_field_names')
        if (value = attributes[:'dynamic_text_ad_group_field_names']).is_a?(Array)
          self.dynamic_text_ad_group_field_names = value
        end
      end

      if attributes.key?(:'dynamic_text_feed_ad_group_field_names')
        if (value = attributes[:'dynamic_text_feed_ad_group_field_names']).is_a?(Array)
          self.dynamic_text_feed_ad_group_field_names = value
        end
      end

      if attributes.key?(:'smart_ad_group_field_names')
        if (value = attributes[:'smart_ad_group_field_names']).is_a?(Array)
          self.smart_ad_group_field_names = value
        end
      end

      if attributes.key?(:'text_ad_group_feed_params_field_names')
        if (value = attributes[:'text_ad_group_feed_params_field_names']).is_a?(Array)
          self.text_ad_group_feed_params_field_names = value
        end
      end

      if attributes.key?(:'page')
        self.page = attributes[:'page']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
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
          selection_criteria == o.selection_criteria &&
          field_names == o.field_names &&
          mobile_app_ad_group_field_names == o.mobile_app_ad_group_field_names &&
          dynamic_text_ad_group_field_names == o.dynamic_text_ad_group_field_names &&
          dynamic_text_feed_ad_group_field_names == o.dynamic_text_feed_ad_group_field_names &&
          smart_ad_group_field_names == o.smart_ad_group_field_names &&
          text_ad_group_feed_params_field_names == o.text_ad_group_feed_params_field_names &&
          page == o.page
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [selection_criteria, field_names, mobile_app_ad_group_field_names, dynamic_text_ad_group_field_names, dynamic_text_feed_ad_group_field_names, smart_ad_group_field_names, text_ad_group_feed_params_field_names, page].hash
    end
  end
end
