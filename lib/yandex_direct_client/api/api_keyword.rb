module YandexDirectClient
  class ApiKeyword < DefaultApi
    def initialize(api_client = ApiClient.new)
      super
      @local_path = '/keywords'
    end

    def keywords(body, opts = {})
      data, _status_code, _headers = send_with_http_info(body, opts)
      data
    end
  end 
end