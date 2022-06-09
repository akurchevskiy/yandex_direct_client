# Common files
require 'yandex_direct_client/api_client'
require 'yandex_direct_client/api_error'
require 'yandex_direct_client/version'
require 'yandex_direct_client/configuration'

# Models
require 'yandex_direct_client/models/base_model'
require 'yandex_direct_client/models/item_response'
require 'yandex_direct_client/models/ad_groups'
require 'yandex_direct_client/models/negative_keywords'
require 'yandex_direct_client/models/restricted_region_ids'
require 'yandex_direct_client/models/campaign'
require 'yandex_direct_client/models/campaign_daily_budget'
require 'yandex_direct_client/models/funds'
require 'yandex_direct_client/models/campaign_funds'
require 'yandex_direct_client/models/shared_account_funds'
require 'yandex_direct_client/models/campaign_negative_keywords'
require 'yandex_direct_client/models/notification'
require 'yandex_direct_client/models/email_settings'
require 'yandex_direct_client/models/sms_settings'
require 'yandex_direct_client/models/campaign_represented_by'
require 'yandex_direct_client/models/statistic'
require 'yandex_direct_client/models/campaign_time_targeting'
require 'yandex_direct_client/models/campaign_time_targeting_holidays_schedule'
require 'yandex_direct_client/models/client'
require 'yandex_direct_client/models/client_bonuses'
require 'yandex_direct_client/models/page'
require 'yandex_direct_client/models/selection_criteria'
require 'yandex_direct_client/models/client_notification'
require 'yandex_direct_client/models/client_notification_email_subscriptions'
require 'yandex_direct_client/models/client_notification_representatives'
require 'yandex_direct_client/models/client_notification_restrictions'
require 'yandex_direct_client/models/client_notification_settings'
require 'yandex_direct_client/models/dictionaries'
require 'yandex_direct_client/models/dynamic_text_ad_group'
require 'yandex_direct_client/models/dynamic_text_feed_ad_group'
require 'yandex_direct_client/models/dynamic_text_feed_ad_group_autotargeting_categories'
require 'yandex_direct_client/models/dynamic_text_feed_ad_group_autotargeting_categories_items'
require 'yandex_direct_client/models/grand'
require 'yandex_direct_client/models/mobile_app_ad_group'
require 'yandex_direct_client/models/mobile_app_ad_group_app_icon_moderation'
require 'yandex_direct_client/models/smart_ad_group'
require 'yandex_direct_client/models/text_ad_group_feed_params'
require 'yandex_direct_client/models/params'
require 'yandex_direct_client/models/result_data'
require 'yandex_direct_client/models/request'
require 'yandex_direct_client/models/currencies'
require 'yandex_direct_client/models/properties'
require 'yandex_direct_client/models/acion_result'
require 'yandex_direct_client/models/exception_notification'
require 'yandex_direct_client/models/keyword'
require 'yandex_direct_client/models/autotargeting_category'
require 'yandex_direct_client/models/item_category'

# APIs
require 'yandex_direct_client/api/default_api'
require 'yandex_direct_client/api/api_agent_clients'
require 'yandex_direct_client/api/api_campaign'
require 'yandex_direct_client/api/api_ads_group'
require 'yandex_direct_client/api/api_dictionaries'
require 'yandex_direct_client/api/api_keyword'

module YandexDirectClient
  class << self
    # Customize default settings for the SDK using block.
    #   YandexDirectClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
