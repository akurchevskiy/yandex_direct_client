module YandexDirectClient
  class ApiCampaign < DefaultApi
    def initialize(api_client = ApiClient.default)
      super
      @local_path = '/campaigns'
    end

    def get_campaign (body, opts = {})
      data, _status_code, _headers = send_with_http_info(body, opts)
      data
    end
  end
end
