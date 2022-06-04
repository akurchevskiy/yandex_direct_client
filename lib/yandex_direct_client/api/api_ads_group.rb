module YandexDirectClient
  class ApiAds < DefaultApi
    def initialize(api_client = ApiClient.new)
      super
      @local_path = '/adgroups'
    end

    def ads_group (body, opts = {})
      data, _status_code, _headers = send_with_http_info(body, opts)
      data
    end
  end
end
