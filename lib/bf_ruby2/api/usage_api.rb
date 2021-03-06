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
  class UsageApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add usage
    # {\"nickname\":\"Add usage\",\"request\":\"createUsageRequest.html\",\"response\":\"createUsageResponse.html\"}
    # @param usage An array of The &#39;Usage&#39; objects to be created.
    # @param [Hash] opts the optional parameters
    # @return [UsagePagedMetadata]
    def create_usage_instance(usage, opts = {})
      data, _status_code, _headers = create_usage_instance_with_http_info(usage, opts)
      return data
    end

    # Add usage
    # {\&quot;nickname\&quot;:\&quot;Add usage\&quot;,\&quot;request\&quot;:\&quot;createUsageRequest.html\&quot;,\&quot;response\&quot;:\&quot;createUsageResponse.html\&quot;}
    # @param usage An array of The &#39;Usage&#39; objects to be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UsagePagedMetadata, Fixnum, Hash)>] UsagePagedMetadata data, response status code and response headers
    def create_usage_instance_with_http_info(usage, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsageApi.create_usage_instance ..."
      end
      # verify the required parameter 'usage' is set
      fail ArgumentError, "Missing the required parameter 'usage' when calling UsageApi.create_usage_instance" if usage.nil?
      # resource path
      local_var_path = "/usage".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(usage)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UsagePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsageApi#create_usage_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve by subscription and period
    # {\"nickname\":\"Retrieve by subscription and period\",\"response\":\"getUsageForPeriod.html\"}
    # @param subscription_id The subscriptionID of the usage.
    # @param period_id The periodID of the usage.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first amendment to return. (default to 0)
    # @option opts [Integer] :records The maximum number of amendments to return. (default to 8766)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order The direction of any ordering, either ASC or DESC. (default to ASC)
    # @return [UsagePagedMetadata]
    def get_usage_by_id(subscription_id, period_id, opts = {})
      data, _status_code, _headers = get_usage_by_id_with_http_info(subscription_id, period_id, opts)
      return data
    end

    # Retrieve by subscription and period
    # {\&quot;nickname\&quot;:\&quot;Retrieve by subscription and period\&quot;,\&quot;response\&quot;:\&quot;getUsageForPeriod.html\&quot;}
    # @param subscription_id The subscriptionID of the usage.
    # @param period_id The periodID of the usage.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first amendment to return.
    # @option opts [Integer] :records The maximum number of amendments to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order The direction of any ordering, either ASC or DESC.
    # @return [Array<(UsagePagedMetadata, Fixnum, Hash)>] UsagePagedMetadata data, response status code and response headers
    def get_usage_by_id_with_http_info(subscription_id, period_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsageApi.get_usage_by_id ..."
      end
      # verify the required parameter 'subscription_id' is set
      fail ArgumentError, "Missing the required parameter 'subscription_id' when calling UsageApi.get_usage_by_id" if subscription_id.nil?
      # verify the required parameter 'period_id' is set
      fail ArgumentError, "Missing the required parameter 'period_id' when calling UsageApi.get_usage_by_id" if period_id.nil?
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/usage/{subscription-id}/{period-id}".sub('{format}','json').sub('{' + 'subscription-id' + '}', subscription_id.to_s).sub('{' + 'period-id' + '}', period_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(opts[:'organizations'], :multi) if !opts[:'organizations'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'records'] = opts[:'records'] if !opts[:'records'].nil?
      query_params[:'order_by'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

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
        :return_type => 'UsagePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsageApi#get_usage_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve by subscription
    # {\"nickname\":\"Retrieve by subscription\",\"response\":\"getUsage.html\"}
    # @param subscription_id The subscriptionID of the subscription whose Usage instances you wish to GET.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first amendment to return. (default to 0)
    # @option opts [Integer] :records The maximum number of amendments to return. (default to 8766)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order The direction of any ordering, either ASC or DESC. (default to ASC)
    # @return [UsagePagedMetadata]
    def get_usage_by_subscription_id(subscription_id, opts = {})
      data, _status_code, _headers = get_usage_by_subscription_id_with_http_info(subscription_id, opts)
      return data
    end

    # Retrieve by subscription
    # {\&quot;nickname\&quot;:\&quot;Retrieve by subscription\&quot;,\&quot;response\&quot;:\&quot;getUsage.html\&quot;}
    # @param subscription_id The subscriptionID of the subscription whose Usage instances you wish to GET.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first amendment to return.
    # @option opts [Integer] :records The maximum number of amendments to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order The direction of any ordering, either ASC or DESC.
    # @return [Array<(UsagePagedMetadata, Fixnum, Hash)>] UsagePagedMetadata data, response status code and response headers
    def get_usage_by_subscription_id_with_http_info(subscription_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsageApi.get_usage_by_subscription_id ..."
      end
      # verify the required parameter 'subscription_id' is set
      fail ArgumentError, "Missing the required parameter 'subscription_id' when calling UsageApi.get_usage_by_subscription_id" if subscription_id.nil?
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/usage/{subscription-id}".sub('{format}','json').sub('{' + 'subscription-id' + '}', subscription_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(opts[:'organizations'], :multi) if !opts[:'organizations'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'records'] = opts[:'records'] if !opts[:'records'].nil?
      query_params[:'order_by'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

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
        :return_type => 'UsagePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsageApi#get_usage_by_subscription_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve by subscription, period and type
    # {\"nickname\":\"Retrieve by subscription, period and type\",\"response\":\"getDetailedUsageForPeriod.html\"}
    # @param subscription_id The subscriptionID of the usage.
    # @param uom The uom of the usage.
    # @param period_id The periodID of the usage.
    # @param usage_type The type of the usage.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first amendment to return. (default to 0)
    # @option opts [Integer] :records The maximum number of amendments to return. (default to 8766)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order The direction of any ordering, either ASC or DESC. (default to ASC)
    # @return [UsagePagedMetadata]
    def get_usage_by_subscription_id_uo_m_period_and_usage_type(subscription_id, uom, period_id, usage_type, opts = {})
      data, _status_code, _headers = get_usage_by_subscription_id_uo_m_period_and_usage_type_with_http_info(subscription_id, uom, period_id, usage_type, opts)
      return data
    end

    # Retrieve by subscription, period and type
    # {\&quot;nickname\&quot;:\&quot;Retrieve by subscription, period and type\&quot;,\&quot;response\&quot;:\&quot;getDetailedUsageForPeriod.html\&quot;}
    # @param subscription_id The subscriptionID of the usage.
    # @param uom The uom of the usage.
    # @param period_id The periodID of the usage.
    # @param usage_type The type of the usage.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first amendment to return.
    # @option opts [Integer] :records The maximum number of amendments to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order The direction of any ordering, either ASC or DESC.
    # @return [Array<(UsagePagedMetadata, Fixnum, Hash)>] UsagePagedMetadata data, response status code and response headers
    def get_usage_by_subscription_id_uo_m_period_and_usage_type_with_http_info(subscription_id, uom, period_id, usage_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsageApi.get_usage_by_subscription_id_uo_m_period_and_usage_type ..."
      end
      # verify the required parameter 'subscription_id' is set
      fail ArgumentError, "Missing the required parameter 'subscription_id' when calling UsageApi.get_usage_by_subscription_id_uo_m_period_and_usage_type" if subscription_id.nil?
      # verify the required parameter 'uom' is set
      fail ArgumentError, "Missing the required parameter 'uom' when calling UsageApi.get_usage_by_subscription_id_uo_m_period_and_usage_type" if uom.nil?
      # verify the required parameter 'period_id' is set
      fail ArgumentError, "Missing the required parameter 'period_id' when calling UsageApi.get_usage_by_subscription_id_uo_m_period_and_usage_type" if period_id.nil?
      # verify the required parameter 'usage_type' is set
      fail ArgumentError, "Missing the required parameter 'usage_type' when calling UsageApi.get_usage_by_subscription_id_uo_m_period_and_usage_type" if usage_type.nil?
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/usage/{subscription-id}/{uom}/{period-id}/{usage-type}".sub('{format}','json').sub('{' + 'subscription-id' + '}', subscription_id.to_s).sub('{' + 'uom' + '}', uom.to_s).sub('{' + 'period-id' + '}', period_id.to_s).sub('{' + 'usage-type' + '}', usage_type.to_s)

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(opts[:'organizations'], :multi) if !opts[:'organizations'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'records'] = opts[:'records'] if !opts[:'records'].nil?
      query_params[:'order_by'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

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
        :return_type => 'UsagePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsageApi#get_usage_by_subscription_id_uo_m_period_and_usage_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update usage
    # {\"nickname\":\"Update usage\",\"request\":\"updateUsageRequest.html\",\"response\":\"updateUsageResponse.html\"}
    # @param usage An array of The &#39;Usage&#39; objects to be updated.
    # @param [Hash] opts the optional parameters
    # @return [UsagePagedMetadata]
    def update_usage_instance(usage, opts = {})
      data, _status_code, _headers = update_usage_instance_with_http_info(usage, opts)
      return data
    end

    # Update usage
    # {\&quot;nickname\&quot;:\&quot;Update usage\&quot;,\&quot;request\&quot;:\&quot;updateUsageRequest.html\&quot;,\&quot;response\&quot;:\&quot;updateUsageResponse.html\&quot;}
    # @param usage An array of The &#39;Usage&#39; objects to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UsagePagedMetadata, Fixnum, Hash)>] UsagePagedMetadata data, response status code and response headers
    def update_usage_instance_with_http_info(usage, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsageApi.update_usage_instance ..."
      end
      # verify the required parameter 'usage' is set
      fail ArgumentError, "Missing the required parameter 'usage' when calling UsageApi.update_usage_instance" if usage.nil?
      # resource path
      local_var_path = "/usage".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(usage)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UsagePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsageApi#update_usage_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
