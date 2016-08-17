=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module BillForward
  class WebhooksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a webhook.
    # {\"nickname\":\"Add a new webhook\",\"request\":\"createWebhookRequest.html\",\"response\":\"createWebhookResponse.html\"}
    # @param webhook The webhook object to be created.
    # @param [Hash] opts the optional parameters
    # @return [WebhookPagedMetadata]
    def create_webhook(webhook, opts = {})
      data, _status_code, _headers = create_webhook_with_http_info(webhook, opts)
      return data
    end

    # Create a webhook.
    # {\&quot;nickname\&quot;:\&quot;Add a new webhook\&quot;,\&quot;request\&quot;:\&quot;createWebhookRequest.html\&quot;,\&quot;response\&quot;:\&quot;createWebhookResponse.html\&quot;}
    # @param webhook The webhook object to be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookPagedMetadata, Fixnum, Hash)>] WebhookPagedMetadata data, response status code and response headers
    def create_webhook_with_http_info(webhook, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebhooksApi.create_webhook ..."
      end
      # verify the required parameter 'webhook' is set
      fail ArgumentError, "Missing the required parameter 'webhook' when calling WebhooksApi.create_webhook" if webhook.nil?
      # resource path
      local_var_path = "/webhooks".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['text/xml', 'application/xml', 'application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(webhook)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WebhookPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#create_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a webhook.
    # {\"nickname\":\"Add a new webhook\",\"request\":\"createWebhookRequest.html\",\"response\":\"createWebhookResponse.html\"}
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [WebhookPagedMetadata]
    def create_webhook_v2(request, opts = {})
      data, _status_code, _headers = create_webhook_v2_with_http_info(request, opts)
      return data
    end

    # Create a webhook.
    # {\&quot;nickname\&quot;:\&quot;Add a new webhook\&quot;,\&quot;request\&quot;:\&quot;createWebhookRequest.html\&quot;,\&quot;response\&quot;:\&quot;createWebhookResponse.html\&quot;}
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookPagedMetadata, Fixnum, Hash)>] WebhookPagedMetadata data, response status code and response headers
    def create_webhook_v2_with_http_info(request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebhooksApi.create_webhook_v2 ..."
      end
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling WebhooksApi.create_webhook_v2" if request.nil?
      # resource path
      local_var_path = "/webhooks/create".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['text/xml', 'application/xml', 'application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WebhookPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#create_webhook_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of Webhooks, specified by the accountID parameter. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Get all webhooks\",\"response\":\"getWebhookAll.html\"}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first webhook to return. (default to 0)
    # @option opts [Integer] :records The maximum number of webhooks to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned. (default to true)
    # @return [WebhookPagedMetadata]
    def get_all_webhooks(opts = {})
      data, _status_code, _headers = get_all_webhooks_with_http_info(opts)
      return data
    end

    # Returns a collection of Webhooks, specified by the accountID parameter. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Get all webhooks\&quot;,\&quot;response\&quot;:\&quot;getWebhookAll.html\&quot;}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first webhook to return.
    # @option opts [Integer] :records The maximum number of webhooks to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
    # @return [Array<(WebhookPagedMetadata, Fixnum, Hash)>] WebhookPagedMetadata data, response status code and response headers
    def get_all_webhooks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebhooksApi.get_all_webhooks ..."
      end
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/webhooks".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(opts[:'organizations'], :multi) if !opts[:'organizations'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'records'] = opts[:'records'] if !opts[:'records'].nil?
      query_params[:'order_by'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'include_retired'] = opts[:'include_retired'] if !opts[:'include_retired'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WebhookPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#get_all_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a single webhook, specified by the webhook-ID parameter.
    # {\"nickname\":\"Retrieve an existing webhook\",\"response\":\"getWebhookByID.html\"}
    # @param webhook_id ID of the webhook.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [WebhookPagedMetadata]
    def get_webhook_by_id(webhook_id, opts = {})
      data, _status_code, _headers = get_webhook_by_id_with_http_info(webhook_id, opts)
      return data
    end

    # Returns a single webhook, specified by the webhook-ID parameter.
    # {\&quot;nickname\&quot;:\&quot;Retrieve an existing webhook\&quot;,\&quot;response\&quot;:\&quot;getWebhookByID.html\&quot;}
    # @param webhook_id ID of the webhook.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(WebhookPagedMetadata, Fixnum, Hash)>] WebhookPagedMetadata data, response status code and response headers
    def get_webhook_by_id_with_http_info(webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebhooksApi.get_webhook_by_id ..."
      end
      # verify the required parameter 'webhook_id' is set
      fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhooksApi.get_webhook_by_id" if webhook_id.nil?
      # resource path
      local_var_path = "/webhooks/{webhook-ID}".sub('{format}','json').sub('{' + 'webhook-ID' + '}', webhook_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(opts[:'organizations'], :multi) if !opts[:'organizations'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['text/plain']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WebhookPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#get_webhook_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retires the specified webhook.
    # {\"nickname\":\"Remove a webhook\",\"response\":\"deleteWebhook.html\"}
    # @param webhook_id ID of the webhook.
    # @param organizations A list of organization-IDs used to restrict the scope of API calls.
    # @param [Hash] opts the optional parameters
    # @return [WebhookPagedMetadata]
    def retire_webhook(webhook_id, organizations, opts = {})
      data, _status_code, _headers = retire_webhook_with_http_info(webhook_id, organizations, opts)
      return data
    end

    # Retires the specified webhook.
    # {\&quot;nickname\&quot;:\&quot;Remove a webhook\&quot;,\&quot;response\&quot;:\&quot;deleteWebhook.html\&quot;}
    # @param webhook_id ID of the webhook.
    # @param organizations A list of organization-IDs used to restrict the scope of API calls.
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookPagedMetadata, Fixnum, Hash)>] WebhookPagedMetadata data, response status code and response headers
    def retire_webhook_with_http_info(webhook_id, organizations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebhooksApi.retire_webhook ..."
      end
      # verify the required parameter 'webhook_id' is set
      fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhooksApi.retire_webhook" if webhook_id.nil?
      # verify the required parameter 'organizations' is set
      fail ArgumentError, "Missing the required parameter 'organizations' when calling WebhooksApi.retire_webhook" if organizations.nil?
      # resource path
      local_var_path = "/webhooks/{webhook-ID}".sub('{format}','json').sub('{' + 'webhook-ID' + '}', webhook_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(organizations, :multi)

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['text/plain']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WebhookPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#retire_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a webhook.
    # {\"nickname\":\"Update a webhook\",\"request\":\"updateWebhookRequest.html\",\"response\":\"updateWebhookResponse.html\"}
    # @param webhook The webhook object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [WebhookPagedMetadata]
    def update_webhook(webhook, opts = {})
      data, _status_code, _headers = update_webhook_with_http_info(webhook, opts)
      return data
    end

    # Update a webhook.
    # {\&quot;nickname\&quot;:\&quot;Update a webhook\&quot;,\&quot;request\&quot;:\&quot;updateWebhookRequest.html\&quot;,\&quot;response\&quot;:\&quot;updateWebhookResponse.html\&quot;}
    # @param webhook The webhook object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookPagedMetadata, Fixnum, Hash)>] WebhookPagedMetadata data, response status code and response headers
    def update_webhook_with_http_info(webhook, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebhooksApi.update_webhook ..."
      end
      # verify the required parameter 'webhook' is set
      fail ArgumentError, "Missing the required parameter 'webhook' when calling WebhooksApi.update_webhook" if webhook.nil?
      # resource path
      local_var_path = "/webhooks".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['text/xml', 'application/xml', 'application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(webhook)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WebhookPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#update_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # New webhooks must be verified before use, use the verificationID of the webhook to perform verification.
    # {\"nickname\":\"Verify a webhook\",\"response\":\"verifyWebhook.html\"}
    # @param verification_id verificationID of the webhook.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [WebhookPagedMetadata]
    def verify_webhook(verification_id, opts = {})
      data, _status_code, _headers = verify_webhook_with_http_info(verification_id, opts)
      return data
    end

    # New webhooks must be verified before use, use the verificationID of the webhook to perform verification.
    # {\&quot;nickname\&quot;:\&quot;Verify a webhook\&quot;,\&quot;response\&quot;:\&quot;verifyWebhook.html\&quot;}
    # @param verification_id verificationID of the webhook.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(WebhookPagedMetadata, Fixnum, Hash)>] WebhookPagedMetadata data, response status code and response headers
    def verify_webhook_with_http_info(verification_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebhooksApi.verify_webhook ..."
      end
      # verify the required parameter 'verification_id' is set
      fail ArgumentError, "Missing the required parameter 'verification_id' when calling WebhooksApi.verify_webhook" if verification_id.nil?
      # resource path
      local_var_path = "/webhooks/verify/{verification-ID}".sub('{format}','json').sub('{' + 'verification-ID' + '}', verification_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(opts[:'organizations'], :multi) if !opts[:'organizations'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['text/plain']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WebhookPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#verify_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
