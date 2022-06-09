module YandexDirectClient
  class Keyword < BaseModel 
    attr_accessor :id
    attr_accessor :keyword
    attr_accessor :adgroup_id
    attr_accessor :campaign_id
    attr_accessor :user_param1
    attr_accessor :userparam2
    attr_accessor :bid
    attr_accessor :context_bid
    attr_accessor :strategy_priority
    attr_accessor :state
    attr_accessor :status
    attr_accessor :serving_status
    attr_accessor :productivity
    attr_accessor :statistics_search
    attr_accessor :statistics_network
    attr_accessor :autotargeting_categories
    
    STATE_OFF = 'OFF'
    STATE_ON = 'ON'
    STATE_SUSPENDED = 'SUSPENDED'

    STATUSE_ACCEPTED = 'ACCEPTED'
    STATUSE_DRAFT = 'DRAFT'
    STATUSE_REJECTED = 'REJECTED'

    SERVING_STATUS_ELIGIBLE = 'ELIGIBLE'
    SERVING_STATUS_RARELY_SERVED = 'RARELY_SERVED'

    STRATEGY_PRIORITY_LOW = 'LOW'
    STRATEGY_PRIORITY_NORMAL = 'NORMAL'
    STRATEGY_PRIORITY_HIGH = 'HIGH'    

    STATES = %w(STATE_ON STATE_OFF STATE_SUSPENDED)
    STATUSES = %w(STATUS_ACCEPTED STATUSE_REJECTED STATUS_DRAFT)
    SERVING_STATUSES = %w(SERVING_STATUS_ELIGIBLE SERVING_STATUS_RARELY_SERVED)
    STRATEGY_PRIORITIES = %w(STRATEGY_PRIORITY_HIGH STRATEGY_PRIORITY_NORMAL STRATEGY_PRIORITY_LOW)

    FIELD_NAMES = [ "Id", "Keyword", "State", "Status", "ServingStatus", "AdGroupId", 
                    "CampaignId", "Bid", "ContextBid", "StrategyPriority", "UserParam1", 
                    "UserParam2", "Productivity", "StatisticsSearch", "StatisticsNetwork", 
                    "AutotargetingCategories"]
  
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        id: :Id,
        keyword: :Keyword,
        adgroup_id: :AdGroupId,
        campaign_id: :CampaignId,
        user_param1: :UserParam1,
        userparam2: :UserParam2,
        bid: :Bid,
        context_bid: :ContextBid,
        strategy_priority: :StrategyPriority,
        state: :State,
        status: :Status,
        serving_status: :ServingStatus,
        productivity: :Productivity,
        statistics_search: :StatisticsSearch,
        statistics_network: :StatisticsNetwork,
        autotargeting_categories: :AutotargetingCategories
      }
    end

     # Attribute type mapping.
    def self.openapi_types
      {
        id: 'Object',
        keyword: 'Object',
        adgroup_id: 'Object',
        campaign_id: 'Object',
        user_param1: 'Object',
        userparam2: 'Object',
        bid: 'Object',
        context_bid: 'Object',
        strategy_priority: 'Object',
        state: 'Object',
        status: 'Object',
        serving_status: 'Object',
        productivity: 'Object',
        statistics_search: 'Statistic',
        statistics_network: 'Statistic',
        autotargeting_categories: 'Object'
      }
    end

    def set_attributes(attributes = {})
      if attributes.key?(:id)
        if (value = attributes[:id]).is_a?(Array)
          self.id = value
        end
      end

      if attributes.key?(:keyword)
        if (value = attributes[:keyword]).is_a?(Array)
          self.keyword = value
        end
      end

      if attributes.key?(:adgroup_id)
        if (value = attributes[:adgroup_id]).is_a?(Array)
          self.adgroup_id = value
        end
      end

      if attributes.key?(:campaign_id)
        if (value = attributes[:campaign_id]).is_a?(Array)
          self.campaign_id = value
        end
      end

      if attributes.key?(:user_param1)
        if (value = attributes[:user_param1]).is_a?(Array)
          self.user_param1 = value
        end
      end

      if attributes.key?(:userparam2)
        if (value = attributes[:userparam2]).is_a?(Array)
          self.userparam2 = value
        end
      end

      if attributes.key?(:bid)
        if (value = attributes[:bid]).is_a?(Array)
          self.bid = value
        end
      end

      if attributes.key?(:context_bid)
        if (value = attributes[:context_bid]).is_a?(Array)
          self.context_bid = value
        end
      end

      if attributes.key?(:strategy_priority)
        if (value = attributes[:strategy_priority]).is_a?(Array)
          self.strategy_priority = value
        end
      end

      if attributes.key?(:state)
        if (value = attributes[:state]).is_a?(Array)
          self.state = value
        end
      end

      if attributes.key?(:status)
        if (value = attributes[:status]).is_a?(Array)
          self.status = value
        end
      end

      if attributes.key?(:serving_status)
        if (value = attributes[:serving_status]).is_a?(Array)
          self.serving_status = value
        end
      end

      if attributes.key?(:productivity)
        if (value = attributes[:productivity]).is_a?(Array)
          self.productivity = value
        end
      end

      if attributes.key?(:statistics_search)
        if (value = attributes[:statistics_search]).is_a?(Array)
          self.statistics_search = value
        end
      end

      if attributes.key?(:statistics_network)
        if (value = attributes[:statistics_network]).is_a?(Array)
          self.statistics_network = value
        end
      end

      if attributes.key?(:autotargeting_categories)
        if (value = attributes[:autotargeting_categories]).is_a?(Array)
          self.autotargeting_categories = value
        end
      end  
    end
    
    def valid?
      true
    end

    def hash
      [id, keyword, adgroup_id, campaign_id, user_param1, userparam2, bid, context_bid, strategy_priority, state, status, 
       serving_status, productivity, statistics_search, statistics_network, autotargeting_categories].hash
    end
  end
end
