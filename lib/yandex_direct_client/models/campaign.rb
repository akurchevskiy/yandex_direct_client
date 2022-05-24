require 'date'

module YandexDirectClient
  class Campaign < BaseModel
    attr_accessor :id
    attr_accessor :name
    attr_accessor :start_date
    attr_accessor :type
    attr_accessor :status
    attr_accessor :state
    attr_accessor :status_payment
    attr_accessor :status_clarification
    attr_accessor :source_id
    attr_accessor :statistics
    attr_accessor :currency
    attr_accessor :funds
    attr_accessor :represented_by
    attr_accessor :daily_budget
    attr_accessor :end_date
    attr_accessor :negative_keywords
    attr_accessor :blocked_ips
    attr_accessor :excluded_sites
    attr_accessor :text_campaign
    attr_accessor :mobile_app_campaign
    attr_accessor :dynamic_text_campaign
    attr_accessor :cpm_banner_campaign
    attr_accessor :smart_campaign
    attr_accessor :client_info
    attr_accessor :notification
    attr_accessor :time_targeting
    attr_accessor :time_zone

    # Types campaigns
    TYPE_TEXT_CAMPAIGN = "TEXT_CAMPAIGN"
    TYPE_MOBILE_APP_CAMPAIGN = "MOBILE_APP_CAMPAIGN"
    TYPE_DYNAMIC_TEXT_CAMPAIGN = "DYNAMIC_TEXT_CAMPAIGN"
    TYPE_CPM_BANNER_CAMPAIGN = "CPM_BANNER_CAMPAIGN"
    TYPE_SMART_CAMPAIGN = "SMART_CAMPAIGN"
    # States campaign
    STATE_ARCHIVED = "ARCHIVED"
    STATE_CONVERTED = "CONVERTED"
    STATE_ENDED = "ENDED"
    STATE_OFF = "OFF"
    STATE_ON = "ON"
    STATE_SUSPENDED = "SUSPENDED"
    # Statuses Campaign
    STATUS_ACCEPTED = "ACCEPTED"
    STATUS_DRAFT = "DRAFT"
    STATUS_MODERATION = "MODERATION"
    STATUS_REJECTED = "REJECTED"
    # STATUSES PAYMENT
    STATUS_PAYMENT_DISALLOWED = "DISALLOWED"
    STATUS_PAYMENT_ALLOWED = "ALLOWED"

    TYPES = [self::TYPE_TEXT_CAMPAIGN, self::TYPE_MOBILE_APP_CAMPAIGN, self::TYPE_DYNAMIC_TEXT_CAMPAIGN,
             self::TYPE_CPM_BANNER_CAMPAIGN, self::TYPE_SMART_CAMPAIGN]
    STATES = [self::STATE_ARCHIVED, self::STATE_CONVERTED, self::STATE_ENDED, self::STATE_OFF,
              self::STATE_ON, self::STATE_SUSPENDED]
    STATUSES = [self::STATUS_ACCEPTED, self::STATUS_DRAFT, self::STATUS_MODERATION, self::STATUS_REJECTED]
    STATUSES_PAYMENT = [ self::STATUS_PAYMENT_ALLOWED, self::STATUS_PAYMENT_DISALLOWED]

    # Fields for all campaigns
    FIELD_NAMES = ["BlockedIps", "ExcludedSites", "Currency", "DailyBudget", "Notification", "EndDate", "Funds",
                   "ClientInfo", "Id", "Name", "NegativeKeywords", "RepresentedBy", "StartDate", "Statistics",
                   "State", "Status", "StatusPayment", "StatusClarification", "SourceId", "TimeTargeting",
                   "TimeZone", "Type"]
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'Id',
        :'name' => :'Name',
        :'start_date' => :'StartDate',
        :'type' => :'Type',
        :'status' => :'Status',
        :'state' => :'State',
        :'status_payment' => :'StatusPayment',
        :'status_clarification' => :'StatusClarification',
        :'source_id' => :'SourceId',
        :'statistics' => :'Statistics',
        :'currency' => :'Currency',
        :'funds' => :'Funds',
        :'represented_by' => :'RepresentedBy',
        :'daily_budget' => :'DailyBudget',
        :'end_date' => :'EndDate',
        :'negative_keywords' => :'NegativeKeywords',
        :'blocked_ips' => :'BlockedIps',
        :'excluded_sites' => :'ExcludedSites',
        :'text_campaign' => :'TextCampaign',
        :'mobile_app_campaign' => :'MobileAppCampaign',
        :'dynamic_text_campaign' => :'DynamicTextCampaign',
        :'cpm_banner_campaign' => :'CpmBannerCampaign',
        :'smart_campaign' => :'SmartCampaign',
        :'client_info' => :'ClientInfo',
        :'notification' => :'Notification',
        :'time_targeting' => :'TimeTargeting',
        :'time_zone' => :'TimeZone'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Object',
        :'name' => :'Object',
        :'start_date' => :'Object',
        :'type' => :'Object',
        :'status' => :'Object',
        :'state' => :'Object',
        :'status_payment' => :'Object',
        :'status_clarification' => :'Object',
        :'source_id' => :'Object',
        :'statistics' => :'Object',
        :'currency' => :'Object',
        :'funds' => :'Object',
        :'represented_by' => :'Object',
        :'daily_budget' => :'Object',
        :'end_date' => :'Object',
        :'negative_keywords' => :'Object',
        :'blocked_ips' => :'Object',
        :'excluded_sites' => :'Object',
        :'text_campaign' => :'Object',
        :'mobile_app_campaign' => :'Object',
        :'dynamic_text_campaign' => :'Object',
        :'cpm_banner_campaign' => :'Object',
        :'smart_campaign' => :'Object',
        :'client_info' => :'Object',
        :'notification' => :'Object',
        :'time_targeting' => :'Object',
        :'time_zone' => :'Object'
      }
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def set_attributes(attributes = {})
      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'status_payment')
        self.status_payment = attributes[:'status_payment']
      end

      if attributes.key?(:'status_clarification')
        self.status_clarification = attributes[:'status_clarification']
      end

      if attributes.key?(:'source_id')
        self.source_id = attributes[:'source_id']
      end

      if attributes.key?(:'statistics')
        self.statistics = attributes[:'statistics']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'funds')
        self.funds = attributes[:'funds']
      end

      if attributes.key?(:'represented_by')
        self.represented_by = attributes[:'represented_by']
      end

      if attributes.key?(:'daily_budget')
        self.daily_budget = attributes[:'daily_budget']
      end

      if attributes.key?(:'end_date')
        self.end_date = attributes[:'end_date']
      end

      if attributes.key?(:'negative_keywords')
        self.negative_keywords = attributes[:'negative_keywords']
      end

      if attributes.key?(:'blocked_ips')
        self.blocked_ips = attributes[:'blocked_ips']
      end

      if attributes.key?(:'excluded_sites')
        self.excluded_sites = attributes[:'excluded_sites']
      end

      if attributes.key?(:'text_campaign')
        self.text_campaign = attributes[:'text_campaign']
      end

      if attributes.key?(:'mobile_app_campaign')
        self.mobile_app_campaign = attributes[:'mobile_app_campaign']
      end

      if attributes.key?(:'dynamic_text_campaign')
        self.dynamic_text_campaign = attributes[:'dynamic_text_campaign']
      end

      if attributes.key?(:'cpm_banner_campaign')
        self.cpm_banner_campaign = attributes[:'cpm_banner_campaign']
      end

      if attributes.key?(:'smart_campaign')
        self.smart_campaign = attributes[:'smart_campaign']
      end

      if attributes.key?(:'client_info')
        self.client_info = attributes[:'client_info']
      end

      if attributes.key?(:'notification')
        self.notification = attributes[:'notification']
      end

      if attributes.key?(:'time_targeting')
        self.time_targeting = attributes[:'time_targeting']
      end

      if attributes.key?(:'time_zone')
        self.time_zone = attributes[:'time_zone']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      type_validator = EnumAttributeValidator.new('Object', self::TYPES)
      return false unless type_validator.valid?(@type)
      status_validator = EnumAttributeValidator.new('Object', self::STATUSES)
      return false unless status_validator.valid?(@status)
      state_validator = EnumAttributeValidator.new('Object', self::STATES)
      return false unless state_validator.valid?(@state)
      status_payment_validator = EnumAttributeValidator.new('Object', self::STATUSES_PAYMENT)
      return false unless status_payment_validator.valid?(@status_payment)
      currency_validator = EnumAttributeValidator.new('Object', YandexDirectClient::Dictionaries::CURRENCIES)
      return false unless currency_validator.valid?(@currency)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('Object', self::TYPES )
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('Object', self::STATUSES)
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('Object', self::STATES)
      unless validator.valid?(state)
        fail ArgumentError, "invalid value for \"state\", must be one of #{validator.allowable_values}."
      end
      @state = state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status_payment Object to be assigned
    def status_payment=(status_payment)
      validator = EnumAttributeValidator.new('Object', self::STATUSES_PAYMENT)
      unless validator.valid?(status_payment)
        fail ArgumentError, "invalid value for \"status_payment\", must be one of #{validator.allowable_values}."
      end
      @status_payment = status_payment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency)
      validator = EnumAttributeValidator.new('Object', YandexDirectClient::Dictionaries::CURRENCIES)
      unless validator.valid?(currency)
        fail ArgumentError, "invalid value for \"currency\", must be one of #{validator.allowable_values}."
      end
      @currency = currency
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          start_date == o.start_date &&
          type == o.type &&
          status == o.status &&
          state == o.state &&
          status_payment == o.status_payment &&
          status_clarification == o.status_clarification &&
          source_id == o.source_id &&
          statistics == o.statistics &&
          currency == o.currency &&
          funds == o.funds &&
          represented_by == o.represented_by &&
          daily_budget == o.daily_budget &&
          end_date == o.end_date &&
          negative_keywords == o.negative_keywords &&
          blocked_ips == o.blocked_ips &&
          excluded_sites == o.excluded_sites &&
          text_campaign == o.text_campaign &&
          mobile_app_campaign == o.mobile_app_campaign &&
          dynamic_text_campaign == o.dynamic_text_campaign &&
          cpm_banner_campaign == o.cpm_banner_campaign &&
          smart_campaign == o.smart_campaign &&
          client_info == o.client_info &&
          notification == o.notification &&
          time_targeting == o.time_targeting &&
          time_zone == o.time_zone
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, start_date, type, status, state, status_payment, status_clarification, source_id, statistics,
       currency, funds, represented_by, daily_budget, end_date, negative_keywords, blocked_ips, excluded_sites,
       text_campaign, mobile_app_campaign, dynamic_text_campaign, cpm_banner_campaign, smart_campaign, client_info,
       notification, time_targeting, time_zone].hash
    end
  end
end
