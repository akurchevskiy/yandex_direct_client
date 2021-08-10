module YandexDirectClient
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # AgencyClients
    # @param body Optional description in *Markdown*
    # @param [Hash] opts the optional parameters
    # @return [ClientGetItemResponse]
    def agencyclientsget(body, opts = {})
      data, _status_code, _headers = agencyclientsget_with_http_info(body, opts)
      data
    end

    # AgencyClients
    # @param body Optional description in *Markdown*
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClientGetItemResponse, Integer, Hash)>] ClientGetItemResponse data, response status code and response headers
    def agencyclientsget_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.agencyclientsget ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DefaultApi.agencyclientsget"
      end
      # resource path
      local_var_path = '/agencyclients'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'ClientGetItemResponse' 

      auth_names = opts[:auth_names] || ['newSecurityScheme']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#agencyclientsget\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Campaigns
    # @param body Optional description in *Markdown*
    # @param [Hash] opts the optional parameters
    # @return [CampaignsGetItemResponse]
    def get_campaign(body, opts = {})
      data, _status_code, _headers = get_campaign_with_http_info(body, opts)
      data
    end

    # Campaigns
    # @param body Optional description in *Markdown*
    # @param [Hash] opts the optional parameters
    # @return [Array<(CampaignsGetItemResponse, Integer, Hash)>] CampaignsGetItemResponse data, response status code and response headers
    def get_campaign_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.get_campaign ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DefaultApi.get_campaign"
      end
      # resource path
      local_var_path = '/campaigns'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body)

      return_type = opts[:return_type] || 'CampaignsGetItemResponse'

      auth_names = opts[:auth_names] || ['newSecurityScheme']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :auth_names => auth_names,
                                                        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#get_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
