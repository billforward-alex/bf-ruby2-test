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
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a user.
    # {\"nickname\":\"Create a new user\",\"request\":\"createUserRequest.html\",\"response\":\"createUserResponse.html\"}
    # @param user The user object to be created.
    # @param [Hash] opts the optional parameters
    # @return [UserPagedMetadata]
    def create_user(user, opts = {})
      data, _status_code, _headers = create_user_with_http_info(user, opts)
      return data
    end

    # Create a user.
    # {\&quot;nickname\&quot;:\&quot;Create a new user\&quot;,\&quot;request\&quot;:\&quot;createUserRequest.html\&quot;,\&quot;response\&quot;:\&quot;createUserResponse.html\&quot;}
    # @param user The user object to be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserPagedMetadata, Fixnum, Hash)>] UserPagedMetadata data, response status code and response headers
    def create_user_with_http_info(user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.create_user ..."
      end
      # verify the required parameter 'user' is set
      fail ArgumentError, "Missing the required parameter 'user' when calling UsersApi.create_user" if user.nil?
      # resource path
      local_var_path = "/users".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(user)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#create_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a user.
    # {\"nickname\":\"Create a new user with login\",\"request\":\"createUserWithLoginRequest.html\",\"response\":\"createUserWithLoginResponse.html\"}
    # @param user The user object to be created.
    # @param [Hash] opts the optional parameters
    # @return [UserCreationResponsePagedMetadata]
    def create_user_login(user, opts = {})
      data, _status_code, _headers = create_user_login_with_http_info(user, opts)
      return data
    end

    # Create a user.
    # {\&quot;nickname\&quot;:\&quot;Create a new user with login\&quot;,\&quot;request\&quot;:\&quot;createUserWithLoginRequest.html\&quot;,\&quot;response\&quot;:\&quot;createUserWithLoginResponse.html\&quot;}
    # @param user The user object to be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserCreationResponsePagedMetadata, Fixnum, Hash)>] UserCreationResponsePagedMetadata data, response status code and response headers
    def create_user_login_with_http_info(user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.create_user_login ..."
      end
      # verify the required parameter 'user' is set
      fail ArgumentError, "Missing the required parameter 'user' when calling UsersApi.create_user_login" if user.nil?
      # resource path
      local_var_path = "/users/create-user-login".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(user)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserCreationResponsePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#create_user_login\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of Users. By default 10 values are returned. Records are returned in natural order.
    # { \"nickname\" : \"Get all users\",\"response\" : \"getUserAll.html\"}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first user to return. (default to 0)
    # @option opts [Integer] :records The maximum number of users to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @return [UserPagedMetadata]
    def get_all_users(opts = {})
      data, _status_code, _headers = get_all_users_with_http_info(opts)
      return data
    end

    # Returns a collection of Users. By default 10 values are returned. Records are returned in natural order.
    # { \&quot;nickname\&quot; : \&quot;Get all users\&quot;,\&quot;response\&quot; : \&quot;getUserAll.html\&quot;}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first user to return.
    # @option opts [Integer] :records The maximum number of users to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @return [Array<(UserPagedMetadata, Fixnum, Hash)>] UserPagedMetadata data, response status code and response headers
    def get_all_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.get_all_users ..."
      end
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/users".sub('{format}','json')

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
        :return_type => 'UserPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_all_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a single User, specified by the ID parameter.
    # { \"nickname\" : \"Retrieve an existing user\",\"response\" : \"getUserByID.html\"}
    # @param user_id ID of the User.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization -IDs used to restrict the scope of API calls.
    # @return [UserPagedMetadata]
    def get_user_by_id(user_id, opts = {})
      data, _status_code, _headers = get_user_by_id_with_http_info(user_id, opts)
      return data
    end

    # Returns a single User, specified by the ID parameter.
    # { \&quot;nickname\&quot; : \&quot;Retrieve an existing user\&quot;,\&quot;response\&quot; : \&quot;getUserByID.html\&quot;}
    # @param user_id ID of the User.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization -IDs used to restrict the scope of API calls.
    # @return [Array<(UserPagedMetadata, Fixnum, Hash)>] UserPagedMetadata data, response status code and response headers
    def get_user_by_id_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.get_user_by_id ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.get_user_by_id" if user_id.nil?
      # resource path
      local_var_path = "/users/{user-ID}".sub('{format}','json').sub('{' + 'user-ID' + '}', user_id.to_s)

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
        :return_type => 'UserPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_user_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a single User, specified by the password-reset-code parameter.
    # { \"nickname\" : \"Retrieve by reset code\",\"response\" : \"getUserByPasswordResetCode.html\"}
    # @param password_reset_code The unique password reset code of the User.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [UserPagedMetadata]
    def get_user_by_password_reset_code(password_reset_code, opts = {})
      data, _status_code, _headers = get_user_by_password_reset_code_with_http_info(password_reset_code, opts)
      return data
    end

    # Returns a single User, specified by the password-reset-code parameter.
    # { \&quot;nickname\&quot; : \&quot;Retrieve by reset code\&quot;,\&quot;response\&quot; : \&quot;getUserByPasswordResetCode.html\&quot;}
    # @param password_reset_code The unique password reset code of the User.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(UserPagedMetadata, Fixnum, Hash)>] UserPagedMetadata data, response status code and response headers
    def get_user_by_password_reset_code_with_http_info(password_reset_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.get_user_by_password_reset_code ..."
      end
      # verify the required parameter 'password_reset_code' is set
      fail ArgumentError, "Missing the required parameter 'password_reset_code' when calling UsersApi.get_user_by_password_reset_code" if password_reset_code.nil?
      # resource path
      local_var_path = "/users/password-reset-code/{password-reset-code}".sub('{format}','json').sub('{' + 'password-reset-code' + '}', password_reset_code.to_s)

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
        :return_type => 'UserPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_user_by_password_reset_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a single User, specified by the sms-password-reset-code parameter.
    # { \"nickname\" : \"Retrieve by sms reset code\",\"response\" : \"getUserBySMSPasswordResetCode.html\"}
    # @param sms_password_reset_code The unique SMS password reset code of the User.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [UserPagedMetadata]
    def get_user_by_sms_password_reset_code(sms_password_reset_code, opts = {})
      data, _status_code, _headers = get_user_by_sms_password_reset_code_with_http_info(sms_password_reset_code, opts)
      return data
    end

    # Returns a single User, specified by the sms-password-reset-code parameter.
    # { \&quot;nickname\&quot; : \&quot;Retrieve by sms reset code\&quot;,\&quot;response\&quot; : \&quot;getUserBySMSPasswordResetCode.html\&quot;}
    # @param sms_password_reset_code The unique SMS password reset code of the User.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(UserPagedMetadata, Fixnum, Hash)>] UserPagedMetadata data, response status code and response headers
    def get_user_by_sms_password_reset_code_with_http_info(sms_password_reset_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.get_user_by_sms_password_reset_code ..."
      end
      # verify the required parameter 'sms_password_reset_code' is set
      fail ArgumentError, "Missing the required parameter 'sms_password_reset_code' when calling UsersApi.get_user_by_sms_password_reset_code" if sms_password_reset_code.nil?
      # resource path
      local_var_path = "/users/sms-password-reset-code/{sms-password-reset-code}".sub('{format}','json').sub('{' + 'sms-password-reset-code' + '}', sms_password_reset_code.to_s)

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
        :return_type => 'UserPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_user_by_sms_password_reset_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a single User, specified by the username parameter, this is by default the e-mail address of the user.
    # { \"nickname\" : \"Retrieve by username\",\"response\" : \"getUserByUsername.html\"}
    # @param username The unique username of the User.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [UserPagedMetadata]
    def get_user_by_username(username, opts = {})
      data, _status_code, _headers = get_user_by_username_with_http_info(username, opts)
      return data
    end

    # Returns a single User, specified by the username parameter, this is by default the e-mail address of the user.
    # { \&quot;nickname\&quot; : \&quot;Retrieve by username\&quot;,\&quot;response\&quot; : \&quot;getUserByUsername.html\&quot;}
    # @param username The unique username of the User.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(UserPagedMetadata, Fixnum, Hash)>] UserPagedMetadata data, response status code and response headers
    def get_user_by_username_with_http_info(username, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.get_user_by_username ..."
      end
      # verify the required parameter 'username' is set
      fail ArgumentError, "Missing the required parameter 'username' when calling UsersApi.get_user_by_username" if username.nil?
      # resource path
      local_var_path = "/users/username/{username}".sub('{format}','json').sub('{' + 'username' + '}', username.to_s)

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
        :return_type => 'UserPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_user_by_username\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a password reset request.
    # {\"nickname\":\"Create a password reset request\",\"request\":\"PasswordResetRequest.html\",\"response\":\"PasswordResetResponse.html\"}
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [UserPagedMetadata]
    def reset_user_password(request, opts = {})
      data, _status_code, _headers = reset_user_password_with_http_info(request, opts)
      return data
    end

    # Create a password reset request.
    # {\&quot;nickname\&quot;:\&quot;Create a password reset request\&quot;,\&quot;request\&quot;:\&quot;PasswordResetRequest.html\&quot;,\&quot;response\&quot;:\&quot;PasswordResetResponse.html\&quot;}
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserPagedMetadata, Fixnum, Hash)>] UserPagedMetadata data, response status code and response headers
    def reset_user_password_with_http_info(request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.reset_user_password ..."
      end
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling UsersApi.reset_user_password" if request.nil?
      # resource path
      local_var_path = "/users/password-reset".sub('{format}','json')

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
        :return_type => 'UserPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#reset_user_password\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retires the user with the specified user-ID.
    # { \"nickname\" : \"Delete a user\",\"response\" : \"deleteUser.html\"}
    # @param user_id ID of the User.
    # @param organizations A list of organization-IDs used to restrict the scope of API calls.
    # @param [Hash] opts the optional parameters
    # @return [UserPagedMetadata]
    def retire_user(user_id, organizations, opts = {})
      data, _status_code, _headers = retire_user_with_http_info(user_id, organizations, opts)
      return data
    end

    # Retires the user with the specified user-ID.
    # { \&quot;nickname\&quot; : \&quot;Delete a user\&quot;,\&quot;response\&quot; : \&quot;deleteUser.html\&quot;}
    # @param user_id ID of the User.
    # @param organizations A list of organization-IDs used to restrict the scope of API calls.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserPagedMetadata, Fixnum, Hash)>] UserPagedMetadata data, response status code and response headers
    def retire_user_with_http_info(user_id, organizations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.retire_user ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.retire_user" if user_id.nil?
      # verify the required parameter 'organizations' is set
      fail ArgumentError, "Missing the required parameter 'organizations' when calling UsersApi.retire_user" if organizations.nil?
      # resource path
      local_var_path = "/users/{user-ID}".sub('{format}','json').sub('{' + 'user-ID' + '}', user_id.to_s)

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
        :return_type => 'UserPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#retire_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a user.
    # { \"nickname\" : \"Update a user\", \"request\" : \"updateUserRequest.html\" ,\"response\" : \"updateUserResponse.html\" }
    # @param user The user object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [UserPagedMetadata]
    def update_user(user, opts = {})
      data, _status_code, _headers = update_user_with_http_info(user, opts)
      return data
    end

    # Update a user.
    # { \&quot;nickname\&quot; : \&quot;Update a user\&quot;, \&quot;request\&quot; : \&quot;updateUserRequest.html\&quot; ,\&quot;response\&quot; : \&quot;updateUserResponse.html\&quot; }
    # @param user The user object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserPagedMetadata, Fixnum, Hash)>] UserPagedMetadata data, response status code and response headers
    def update_user_with_http_info(user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.update_user ..."
      end
      # verify the required parameter 'user' is set
      fail ArgumentError, "Missing the required parameter 'user' when calling UsersApi.update_user" if user.nil?
      # resource path
      local_var_path = "/users".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(user)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#update_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a user's password.
    # { \"nickname\" : \"Update password using reset code\", \"request\" : \"updateUserPassword.html\" ,\"response\" : \"updateUserPasswordResponse.html\" }
    # @param password_reset The password reset object.
    # @param [Hash] opts the optional parameters
    # @return [UserPagedMetadata]
    def update_user_password(password_reset, opts = {})
      data, _status_code, _headers = update_user_password_with_http_info(password_reset, opts)
      return data
    end

    # Update a user&#39;s password.
    # { \&quot;nickname\&quot; : \&quot;Update password using reset code\&quot;, \&quot;request\&quot; : \&quot;updateUserPassword.html\&quot; ,\&quot;response\&quot; : \&quot;updateUserPasswordResponse.html\&quot; }
    # @param password_reset The password reset object.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserPagedMetadata, Fixnum, Hash)>] UserPagedMetadata data, response status code and response headers
    def update_user_password_with_http_info(password_reset, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.update_user_password ..."
      end
      # verify the required parameter 'password_reset' is set
      fail ArgumentError, "Missing the required parameter 'password_reset' when calling UsersApi.update_user_password" if password_reset.nil?
      # resource path
      local_var_path = "/users/password-update".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(password_reset)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#update_user_password\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
