module YandexDirectClient
  class AdGroup < BaseModel
    attr_accessor :id
    attr_accessor :name
    attr_accessor :campaign_id
    attr_accessor :region_ids
    attr_accessor :restricted_region_ids
    attr_accessor :negative_keywords
    attr_accessor :negative_keyword_shared_set_ids
    attr_accessor :tracking_params
    attr_accessor :status
    attr_accessor :serving_status
    attr_accessor :type
    attr_accessor :subtype
    attr_accessor :mobile_app_ad_group
    attr_accessor :dynamic_text_ad_group
    attr_accessor :dynamic_text_feed_ad_group
    attr_accessor :smart_ad_group
    attr_accessor :text_ad_group_feed_params

    STATUS_ACCEPTED = 'ACCEPTED'
    STATUS_DRAFT = 'DRAFT'
    STATUS_MODERATION = 'MODERATION'
    STATUS_PREACCEPTED = 'PREACCEPTED'
    STATUS_REJECTED = 'REJECTED'

    SERVING_STATUS_ELIGIBLE = 'ELIGIBLE'
    SERVING_STATUS_RARELY_SERVED = 'RARELY_SERVED'

    TYPE_TEXT_AD_GROUP = 'TEXT_AD_GROUP'
    TYPE_MOBILE_APP_AD_GROUP = 'MOBILE_APP_AD_GROUP'
    TYPE_DYNAMIC_TEXT_AD_GROUP = 'DYNAMIC_TEXT_AD_GROUP'
    TYPE_CPM_BANNER_AD_GROUP = 'CPM_BANNER_AD_GROUP'
    TYPE_CPM_VIDEO_AD_GROUP = 'CPM_VIDEO_AD_GROUP'
    TYPE_SMART_AD_GROUP = 'SMART_AD_GROUP'

    SUBTYPE_WEBPAGE = 'WEBPAGE'
    SUBTYPE_FEED = 'FEED'
    SUBTYPE_NONE = 'NONE'
    SUBTYPE_KEYWORDS = 'KEYWORDS'
    SUBTYPE_USER_PROFILE = 'USER_PROFILE'

    STATUSES = [STATUS_ACCEPTED, STATUS_DRAFT, STATUS_MODERATION, STATUS_PREACCEPTED, STATUS_REJECTED]
    SERVING_STATUSES = [SERVING_STATUS_ELIGIBLE, SERVING_STATUS_RARELY_SERVED]
    TYPES = [TYPE_TEXT_AD_GROUP, TYPE_MOBILE_APP_AD_GROUP, TYPE_DYNAMIC_TEXT_AD_GROUP, TYPE_CPM_BANNER_AD_GROUP,
             TYPE_CPM_VIDEO_AD_GROUP, TYPE_SMART_AD_GROUP]
    SUBTYPES = [SUBTYPE_WEBPAGE, SUBTYPE_FEED, SUBTYPE_NONE, SUBTYPE_KEYWORDS, SUBTYPE_USER_PROFILE]
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        id: :Id,
        name: :Name,
        campaign_id: :CampaignId,
        region_ids: :RegionIds,
        restricted_region_ids: :RestrictedRegionIds,
        negative_keywords: :NegativeKeywords,
        negative_keyword_shared_set_ids: :NegativeKeywordSharedSetIds,
        tracking_params: :TrackingParams,
        status: :Status,
        serving_status: :ServingStatus,
        type: :Type,
        subtype: :Subtype,
        mobile_app_ad_group: :MobileAppAdGroup,
        dynamic_text_ad_group: :DynamicTextAdGroup,
        dynamic_text_feed_ad_group: :DynamicTextFeedAdGroup,
        smart_ad_group: :SmartAdGroup,
        text_ad_group_feed_params: :TextAdGroupFeedParams
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        id: 'Object',
        name: 'Object',
        campaign_id: 'Object',
        region_ids: 'Object',
        restricted_region_ids: 'Object',
        negative_keywords: 'Object',
        negative_keyword_shared_set_ids: 'Object',
        tracking_params: 'Object',
        status: 'Object',
        serving_status: 'Object',
        type: 'Object',
        subtype: 'Object',
        mobile_app_ad_group: 'Object',
        dynamic_text_ad_group: 'Object',
        dynamic_text_feed_ad_group: 'Object',
        smart_ad_group: 'Object',
        text_ad_group_feed_params: 'Object'
      }
    end

    def set_attributes(attributes = {})
      if attributes.key?(:id)
        self.id = attributes[:id]
      end

      if attributes.key?(:name)
        self.name = attributes[:name]
      end

      if attributes.key?(:campaign_id)
        self.campaign_id = attributes[:campaign_id]
      end

      if attributes.key?(:region_ids)
        if (value = attributes[:region_ids]).is_a?(Array)
          self.region_ids = value
        end
      end

      if attributes.key?(:'restricted_region_ids')
        self.restricted_region_ids = attributes[:'restricted_region_ids']
      end

      if attributes.key?(:'negative_keywords')
        self.negative_keywords = attributes[:'negative_keywords']
      end

      if attributes.key?(:'negative_keyword_shared_set_ids')
        self.negative_keyword_shared_set_ids = attributes[:'negative_keyword_shared_set_ids']
      end

      if attributes.key?(:'tracking_params')
        self.tracking_params = attributes[:'tracking_params']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'serving_status')
        self.serving_status = attributes[:'serving_status']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'subtype')
        self.subtype = attributes[:'subtype']
      end

      if attributes.key?(:'mobile_app_ad_group')
        self.mobile_app_ad_group = attributes[:'mobile_app_ad_group']
      end

      if attributes.key?(:'dynamic_text_ad_group')
        if (value = attributes[:'dynamic_text_ad_group']).is_a?(Array)
          self.dynamic_text_ad_group = value
        end
      end

      if attributes.key?(:'dynamic_text_feed_ad_group')
        if (value = attributes[:'dynamic_text_feed_ad_group']).is_a?(Array)
          self.dynamic_text_feed_ad_group = value
        end
      end

      if attributes.key?(:'smart_ad_group')
        self.smart_ad_group = attributes[:'smart_ad_group']
      end

      if attributes.key?(:'text_ad_group_feed_params')
        self.text_ad_group_feed_params = attributes[:'text_ad_group_feed_params']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      status_validator = EnumAttributeValidator.new('Object', STATUSES)
      return false unless status_validator.valid?(@status)
      serving_status_validator = EnumAttributeValidator.new('Object', SERVING_STATUSES)
      return false unless serving_status_validator.valid?(@serving_status)
      type_validator = EnumAttributeValidator.new('Object', TYPES)
      return false unless type_validator.valid?(@type)
      subtype_validator = EnumAttributeValidator.new('Object', SUBTYPES)
      return false unless subtype_validator.valid?(@subtype)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('Object', STATUSES)
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] serving_status Object to be assigned
    def serving_status=(serving_status)
      validator = EnumAttributeValidator.new('Object', SERVING_STATUSES)
      unless validator.valid?(serving_status)
        fail ArgumentError, "invalid value for \"serving_status\", must be one of #{validator.allowable_values}."
      end
      @serving_status = serving_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('Object', TYPES)
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subtype Object to be assigned
    def subtype=(subtype)
      validator = EnumAttributeValidator.new('Object', SUBTYPES)
      unless validator.valid?(subtype)
        fail ArgumentError, "invalid value for \"subtype\", must be one of #{validator.allowable_values}."
      end
      @subtype = subtype
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          campaign_id == o.campaign_id &&
          region_ids == o.region_ids &&
          restricted_region_ids == o.restricted_region_ids &&
          negative_keywords == o.negative_keywords &&
          negative_keyword_shared_set_ids == o.negative_keyword_shared_set_ids &&
          tracking_params == o.tracking_params &&
          status == o.status &&
          serving_status == o.serving_status &&
          type == o.type &&
          subtype == o.subtype &&
          mobile_app_ad_group == o.mobile_app_ad_group &&
          dynamic_text_ad_group == o.dynamic_text_ad_group &&
          dynamic_text_feed_ad_group == o.dynamic_text_feed_ad_group &&
          smart_ad_group == o.smart_ad_group &&
          text_ad_group_feed_params == o.text_ad_group_feed_params
    end
  end
end
