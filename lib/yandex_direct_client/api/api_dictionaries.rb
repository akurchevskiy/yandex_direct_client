module YandexDirectClient
  class ApiDictionaries < DefaultApi
    def initialize(api_client = ApiClient.new)
      super
      @local_path = '/dictionaries'
    end

    def get_dictionaries (body, opts = {})
      data, _status_code, _headers = send_with_http_info(body, opts)
      data
    end
  end
end
