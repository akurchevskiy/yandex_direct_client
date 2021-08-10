# Common files
require 'yandex_direct_client/api_client'
require 'yandex_direct_client/api_error'
require 'yandex_direct_client/version'
require 'yandex_direct_client/configuration'

# Models
require 'yandex_direct_client/models/client'
require 'yandex_direct_client/models/client_bonuses'
require 'yandex_direct_client/models/client_get_item_request'
require 'yandex_direct_client/models/client_get_item_request_page'
require 'yandex_direct_client/models/client_get_item_request_params'
require 'yandex_direct_client/models/client_get_item_request_params_selection_criteria'
require 'yandex_direct_client/models/client_get_item_response'
require 'yandex_direct_client/models/client_get_item_response_result'
require 'yandex_direct_client/models/client_notification'
require 'yandex_direct_client/models/client_notification_email_subscriptions'
require 'yandex_direct_client/models/client_notification_representatives'
require 'yandex_direct_client/models/client_notification_restrictions'
require 'yandex_direct_client/models/client_notification_settings'
require 'yandex_direct_client/models/grand'

# APIs
require 'yandex_direct_client/api/default_api'

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