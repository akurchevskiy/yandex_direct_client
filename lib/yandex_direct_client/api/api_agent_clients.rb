module YandexDirectClient
  class ApiAgentClients < DefaultApi

    def initialize(api_client = ApiClient.new)
      super
      @local_path = '/agencyclients'
      @use_client_login = true
    end
    # AgencyClients
    # @param body Optional description in *Markdown*
    # @param [Hash] opts the optional parameters
    # @return [ClientGetItemResponse]
    def agencyclientsget(body, opts = {})
      data, _status_code, _headers = send_with_http_info(body, opts)
      data
    end
  end
end