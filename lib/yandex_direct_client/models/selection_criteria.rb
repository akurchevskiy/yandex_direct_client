module YandexDirectClient
  class SelectionCriteria < BaseModel
    attr_accessor :logins
    attr_accessor :archived
    attr_accessor :ids
    attr_accessor :types
    attr_accessor :states
    attr_accessor :statuses
    attr_accessor :statuses_payment
    attr_accessor :campaign_ids
    attr_accessor :serving_statuses
    attr_accessor :app_icon_statuses
    attr_accessor :negative_keyword_ids
    attr_accessor :ad_group_ids
    attr_accessor :modified_since

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        ids: :Ids,
        campaign_ids: :CampaignIds,
        ad_group_ids: :AdGroupIds,
        negative_keyword_ids: :NegativeKeywordSharedSetIds,
        types: :Types,
        states: :States,
        statuses: :Statuses,
        statuses_payment: :StatusesPayment,
        serving_statuses: :ServingStatuses,
        app_icon_statuses: :AppIconStatuses,
        logins: :Logins,
        archived: :Archived,
        modified_since: :ModifiedSince
        
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        ids: 'Array',
        campaign_ids: 'Array',
        ad_group_ids: 'Arrar',
        negative_keyword_ids: 'Array',
        types: 'Object',
        states: 'Object',
        statuses: 'Object',
        statuses_payment: 'Object',
        serving_statuses: 'Array',
        app_icon_statuses: 'Array',
        logins: 'Object',
        archived: 'Object',
        modified_since: 'Object'
      }
    end

    def set_attributes(attributes = {})
      if attributes.key?(:'logins')
        if (value = attributes[:'logins']).is_a?(Array)
          self.logins = value
        end
      end

      if attributes.key?(:'archived')
        self.archived = attributes[:'archived']
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

      if attributes.key?(:'states')
        if (value = attributes[:'states']).is_a?(Array)
          self.states = value
        end
      end

      if attributes.key?(:'statuses')
        if (value = attributes[:'statuses']).is_a?(Array)
          self.statuses = value
        end
      end

      if attributes.key?(:'statuses_payment')
        if (value = attributes[:'statuses_payment']).is_a?(Array)
          self.statuses_payment = value
        end
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      archived_validator = EnumAttributeValidator.new('Object', ['YES', 'NO'])
      return false unless archived_validator.valid?(@archived)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] archived Object to be assigned
    def archived=(archived)
      validator = EnumAttributeValidator.new('Object', ['YES', 'NO'])
      unless validator.valid?(archived)
        fail ArgumentError, "invalid value for \"archived\", must be one of #{validator.allowable_values}."
      end
      @archived = archived
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          logins == o.logins &&
          archived == o.archived &&
          ids == o.ids &&
          types == o.types &&
          states == o.states &&
          statuses == o.statuses &&
          statuses_payment == o.statuses_payment &&
          ad_group_ids == o.ad_group_ids
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [ids, campaign_ids, ad_group_ids, negative_keyword_ids, types, states, statuses, statuses_payment,
       app_icon_statuses, logins, archived, modified_since].hash
    end
  end
end
