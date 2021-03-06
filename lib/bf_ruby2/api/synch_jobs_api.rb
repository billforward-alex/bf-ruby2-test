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
  class SynchJobsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a synch job.
    # {\"nickname\":\"Create a new sync job\",\"request\":\"createSynchJobRequest.html\",\"response\":\"createSynchJobResponse.html\"}
    # @param synch_job The data synch job object to be created.
    # @param [Hash] opts the optional parameters
    # @return [DataSynchronizationJobPagedMetadata]
    def create_sync_job(synch_job, opts = {})
      data, _status_code, _headers = create_sync_job_with_http_info(synch_job, opts)
      return data
    end

    # Create a synch job.
    # {\&quot;nickname\&quot;:\&quot;Create a new sync job\&quot;,\&quot;request\&quot;:\&quot;createSynchJobRequest.html\&quot;,\&quot;response\&quot;:\&quot;createSynchJobResponse.html\&quot;}
    # @param synch_job The data synch job object to be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DataSynchronizationJobPagedMetadata, Fixnum, Hash)>] DataSynchronizationJobPagedMetadata data, response status code and response headers
    def create_sync_job_with_http_info(synch_job, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchJobsApi.create_sync_job ..."
      end
      # verify the required parameter 'synch_job' is set
      fail ArgumentError, "Missing the required parameter 'synch_job' when calling SynchJobsApi.create_sync_job" if synch_job.nil?
      # resource path
      local_var_path = "/synchJobs".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(synch_job)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DataSynchronizationJobPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchJobsApi#create_sync_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of Users. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Get all synch jobs\",\"response\":\"getSynchJobsAll.html\"}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first synch job to return. (default to 0)
    # @option opts [Integer] :records The maximum number of synch jobs to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @return [DataSynchronizationJobPagedMetadata]
    def get_all_sync_jobs(opts = {})
      data, _status_code, _headers = get_all_sync_jobs_with_http_info(opts)
      return data
    end

    # Returns a collection of Users. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Get all synch jobs\&quot;,\&quot;response\&quot;:\&quot;getSynchJobsAll.html\&quot;}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first synch job to return.
    # @option opts [Integer] :records The maximum number of synch jobs to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @return [Array<(DataSynchronizationJobPagedMetadata, Fixnum, Hash)>] DataSynchronizationJobPagedMetadata data, response status code and response headers
    def get_all_sync_jobs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchJobsApi.get_all_sync_jobs ..."
      end
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/synchJobs".sub('{format}','json')

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
        :return_type => 'DataSynchronizationJobPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchJobsApi#get_all_sync_jobs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a single job, specified by the ID parameter.
    # {\"nickname\":\"Retrieve an existing synch job\",\"response\":\"getSyncJobByID.html\"}
    # @param synch_job_id ID of the Sync Job.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization -IDs used to restrict the scope of API calls.
    # @return [DataSynchronizationJobPagedMetadata]
    def get_sync_job_by_id(synch_job_id, opts = {})
      data, _status_code, _headers = get_sync_job_by_id_with_http_info(synch_job_id, opts)
      return data
    end

    # Returns a single job, specified by the ID parameter.
    # {\&quot;nickname\&quot;:\&quot;Retrieve an existing synch job\&quot;,\&quot;response\&quot;:\&quot;getSyncJobByID.html\&quot;}
    # @param synch_job_id ID of the Sync Job.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization -IDs used to restrict the scope of API calls.
    # @return [Array<(DataSynchronizationJobPagedMetadata, Fixnum, Hash)>] DataSynchronizationJobPagedMetadata data, response status code and response headers
    def get_sync_job_by_id_with_http_info(synch_job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchJobsApi.get_sync_job_by_id ..."
      end
      # verify the required parameter 'synch_job_id' is set
      fail ArgumentError, "Missing the required parameter 'synch_job_id' when calling SynchJobsApi.get_sync_job_by_id" if synch_job_id.nil?
      # resource path
      local_var_path = "/synchJobs/{synchJob-ID}".sub('{format}','json').sub('{' + 'synchJob-ID' + '}', synch_job_id.to_s)

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
        :return_type => 'DataSynchronizationJobPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchJobsApi#get_sync_job_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection jobs, specified by the scope parameter.
    # {\"nickname\":\"Retrieve by scope\",\"response\":\"getSyncJobByScope.html\"}
    # @param scope The scope of the synch job.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [DataSynchronizationJobPagedMetadata]
    def get_sync_job_by_scope(scope, opts = {})
      data, _status_code, _headers = get_sync_job_by_scope_with_http_info(scope, opts)
      return data
    end

    # Returns a collection jobs, specified by the scope parameter.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by scope\&quot;,\&quot;response\&quot;:\&quot;getSyncJobByScope.html\&quot;}
    # @param scope The scope of the synch job.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(DataSynchronizationJobPagedMetadata, Fixnum, Hash)>] DataSynchronizationJobPagedMetadata data, response status code and response headers
    def get_sync_job_by_scope_with_http_info(scope, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchJobsApi.get_sync_job_by_scope ..."
      end
      # verify the required parameter 'scope' is set
      fail ArgumentError, "Missing the required parameter 'scope' when calling SynchJobsApi.get_sync_job_by_scope" if scope.nil?
      # verify enum value
      unless ['Manual', 'Scheduled'].include?(scope)
        fail ArgumentError, "invalid value for 'scope', must be one of Manual, Scheduled"
      end
      # resource path
      local_var_path = "/synchJobs/scope/{scope}".sub('{format}','json').sub('{' + 'scope' + '}', scope.to_s)

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
        :return_type => 'DataSynchronizationJobPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchJobsApi#get_sync_job_by_scope\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection jobs, specified by the state parameter.
    # {\"nickname\":\"Retrieve by state\",\"response\":\"getSyncJobByState.html\"}
    # @param state The state of the synch job.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [DataSynchronizationJobPagedMetadata]
    def get_sync_job_by_state(state, opts = {})
      data, _status_code, _headers = get_sync_job_by_state_with_http_info(state, opts)
      return data
    end

    # Returns a collection jobs, specified by the state parameter.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by state\&quot;,\&quot;response\&quot;:\&quot;getSyncJobByState.html\&quot;}
    # @param state The state of the synch job.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(DataSynchronizationJobPagedMetadata, Fixnum, Hash)>] DataSynchronizationJobPagedMetadata data, response status code and response headers
    def get_sync_job_by_state_with_http_info(state, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchJobsApi.get_sync_job_by_state ..."
      end
      # verify the required parameter 'state' is set
      fail ArgumentError, "Missing the required parameter 'state' when calling SynchJobsApi.get_sync_job_by_state" if state.nil?
      # verify enum value
      unless ['Pending', 'Complete', 'Failed', 'Cancelled', 'Processing'].include?(state)
        fail ArgumentError, "invalid value for 'state', must be one of Pending, Complete, Failed, Cancelled, Processing"
      end
      # resource path
      local_var_path = "/synchJobs/state/{state}".sub('{format}','json').sub('{' + 'state' + '}', state.to_s)

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
        :return_type => 'DataSynchronizationJobPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchJobsApi#get_sync_job_by_state\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection jobs, specified by the target parameter.
    # {\"nickname\":\"Retrieve by target\",\"response\":\"getSyncJobByTarget.html\"}
    # @param target The target of the synch job.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [DataSynchronizationJobPagedMetadata]
    def get_sync_job_by_target(target, opts = {})
      data, _status_code, _headers = get_sync_job_by_target_with_http_info(target, opts)
      return data
    end

    # Returns a collection jobs, specified by the target parameter.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by target\&quot;,\&quot;response\&quot;:\&quot;getSyncJobByTarget.html\&quot;}
    # @param target The target of the synch job.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(DataSynchronizationJobPagedMetadata, Fixnum, Hash)>] DataSynchronizationJobPagedMetadata data, response status code and response headers
    def get_sync_job_by_target_with_http_info(target, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchJobsApi.get_sync_job_by_target ..."
      end
      # verify the required parameter 'target' is set
      fail ArgumentError, "Missing the required parameter 'target' when calling SynchJobsApi.get_sync_job_by_target" if target.nil?
      # verify enum value
      unless ['Salesforce'].include?(target)
        fail ArgumentError, "invalid value for 'target', must be one of Salesforce"
      end
      # resource path
      local_var_path = "/synchJobs/target/{target}".sub('{format}','json').sub('{' + 'target' + '}', target.to_s)

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
        :return_type => 'DataSynchronizationJobPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchJobsApi#get_sync_job_by_target\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection jobs, specified by the type parameter.
    # {\"nickname\":\"Retrieve by type\",\"response\":\"getSyncJobByType.html\"}
    # @param type The type of the synch job.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [DataSynchronizationJobPagedMetadata]
    def get_sync_job_by_type(type, opts = {})
      data, _status_code, _headers = get_sync_job_by_type_with_http_info(type, opts)
      return data
    end

    # Returns a collection jobs, specified by the type parameter.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by type\&quot;,\&quot;response\&quot;:\&quot;getSyncJobByType.html\&quot;}
    # @param type The type of the synch job.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(DataSynchronizationJobPagedMetadata, Fixnum, Hash)>] DataSynchronizationJobPagedMetadata data, response status code and response headers
    def get_sync_job_by_type_with_http_info(type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchJobsApi.get_sync_job_by_type ..."
      end
      # verify the required parameter 'type' is set
      fail ArgumentError, "Missing the required parameter 'type' when calling SynchJobsApi.get_sync_job_by_type" if type.nil?
      # verify enum value
      unless ['Incremental', 'Full'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of Incremental, Full"
      end
      # resource path
      local_var_path = "/synchJobs/type/{type}".sub('{format}','json').sub('{' + 'type' + '}', type.to_s)

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
        :return_type => 'DataSynchronizationJobPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchJobsApi#get_sync_job_by_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a synch job.
    # {\"nickname\":\"Update a synch job\",\"request\":\"updateSyncJobRequest.html\",\"response\":\"updateSyncJobResponse.html\"}
    # @param synch_job The synch job object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [DataSynchronizationJobPagedMetadata]
    def update_sync_job(synch_job, opts = {})
      data, _status_code, _headers = update_sync_job_with_http_info(synch_job, opts)
      return data
    end

    # Update a synch job.
    # {\&quot;nickname\&quot;:\&quot;Update a synch job\&quot;,\&quot;request\&quot;:\&quot;updateSyncJobRequest.html\&quot;,\&quot;response\&quot;:\&quot;updateSyncJobResponse.html\&quot;}
    # @param synch_job The synch job object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DataSynchronizationJobPagedMetadata, Fixnum, Hash)>] DataSynchronizationJobPagedMetadata data, response status code and response headers
    def update_sync_job_with_http_info(synch_job, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchJobsApi.update_sync_job ..."
      end
      # verify the required parameter 'synch_job' is set
      fail ArgumentError, "Missing the required parameter 'synch_job' when calling SynchJobsApi.update_sync_job" if synch_job.nil?
      # resource path
      local_var_path = "/synchJobs".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(synch_job)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DataSynchronizationJobPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchJobsApi#update_sync_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
