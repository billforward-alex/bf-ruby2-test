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
  class ReceiptsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a receipt.
    # {\"nickname\":\"Create a new receipt\",\"request\":\"createReceiptRequest.html\",\"response\":\"createReceiptResponse.html\"}
    # @param receipt The receipt object to be created.
    # @param [Hash] opts the optional parameters
    # @return [ReceiptPagedMetadata]
    def create_receipt(receipt, opts = {})
      data, _status_code, _headers = create_receipt_with_http_info(receipt, opts)
      return data
    end

    # Create a receipt.
    # {\&quot;nickname\&quot;:\&quot;Create a new receipt\&quot;,\&quot;request\&quot;:\&quot;createReceiptRequest.html\&quot;,\&quot;response\&quot;:\&quot;createReceiptResponse.html\&quot;}
    # @param receipt The receipt object to be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReceiptPagedMetadata, Fixnum, Hash)>] ReceiptPagedMetadata data, response status code and response headers
    def create_receipt_with_http_info(receipt, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReceiptsApi.create_receipt ..."
      end
      # verify the required parameter 'receipt' is set
      fail ArgumentError, "Missing the required parameter 'receipt' when calling ReceiptsApi.create_receipt" if receipt.nil?
      # resource path
      local_var_path = "/receipts".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(receipt)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ReceiptPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceiptsApi#create_receipt\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of all receipts. By default 10 values are returned. receipts are returned in natural order
    # {\"nickname\":\"Get all receipts\",\"response\":\"getreceiptsAll.html\"}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first receipt to return. (default to 0)
    # @option opts [Integer] :records The maximum number of receipts to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [Array<String>] :account_id 
    # @option opts [Array<String>] :invoice_id 
    # @option opts [Array<String>] :payment_method_id 
    # @option opts [String] :type 
    # @option opts [String] :gateway 
    # @option opts [String] :decision 
    # @return [ReceiptPagedMetadata]
    def get_all_receipts(opts = {})
      data, _status_code, _headers = get_all_receipts_with_http_info(opts)
      return data
    end

    # Returns a collection of all receipts. By default 10 values are returned. receipts are returned in natural order
    # {\&quot;nickname\&quot;:\&quot;Get all receipts\&quot;,\&quot;response\&quot;:\&quot;getreceiptsAll.html\&quot;}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first receipt to return.
    # @option opts [Integer] :records The maximum number of receipts to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [Array<String>] :account_id 
    # @option opts [Array<String>] :invoice_id 
    # @option opts [Array<String>] :payment_method_id 
    # @option opts [String] :type 
    # @option opts [String] :gateway 
    # @option opts [String] :decision 
    # @return [Array<(ReceiptPagedMetadata, Fixnum, Hash)>] ReceiptPagedMetadata data, response status code and response headers
    def get_all_receipts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReceiptsApi.get_all_receipts ..."
      end
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      if opts[:'type'] && !['credit', 'debit'].include?(opts[:'type'])
        fail ArgumentError, 'invalid value for "type", must be one of credit, debit'
      end
      if opts[:'gateway'] && !['cybersource_token', 'card_vault', 'paypal_simple', 'locustworld', 'free', 'coupon', 'credit_note', 'stripe', 'braintree', 'balanced', 'paypal', 'billforward_test', 'offline', 'trial', 'stripeACH', 'authorizeNet', 'spreedly', 'sagePay', 'trustCommerce', 'payvision', 'kash'].include?(opts[:'gateway'])
        fail ArgumentError, 'invalid value for "gateway", must be one of cybersource_token, card_vault, paypal_simple, locustworld, free, coupon, credit_note, stripe, braintree, balanced, paypal, billforward_test, offline, trial, stripeACH, authorizeNet, spreedly, sagePay, trustCommerce, payvision, kash'
      end
      if opts[:'decision'] && !['Accept', 'Reject', 'Error'].include?(opts[:'decision'])
        fail ArgumentError, 'invalid value for "decision", must be one of Accept, Reject, Error'
      end
      # resource path
      local_var_path = "/receipts".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(opts[:'organizations'], :multi) if !opts[:'organizations'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'records'] = opts[:'records'] if !opts[:'records'].nil?
      query_params[:'order_by'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'account_id'] = @api_client.build_collection_param(opts[:'account_id'], :multi) if !opts[:'account_id'].nil?
      query_params[:'invoice_id'] = @api_client.build_collection_param(opts[:'invoice_id'], :multi) if !opts[:'invoice_id'].nil?
      query_params[:'payment_method_id'] = @api_client.build_collection_param(opts[:'payment_method_id'], :multi) if !opts[:'payment_method_id'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'gateway'] = opts[:'gateway'] if !opts[:'gateway'].nil?
      query_params[:'decision'] = opts[:'decision'] if !opts[:'decision'].nil?

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
        :return_type => 'ReceiptPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceiptsApi#get_all_receipts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a single receipt, specified by the ID parameter.
    # {\"nickname\":\"Retrieve an existing receipt\",\"response\":\"getreceiptByID.html\"}
    # @param receipt_id ID of the receipt.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [ReceiptPagedMetadata]
    def get_receipt_by_id(receipt_id, opts = {})
      data, _status_code, _headers = get_receipt_by_id_with_http_info(receipt_id, opts)
      return data
    end

    # Returns a single receipt, specified by the ID parameter.
    # {\&quot;nickname\&quot;:\&quot;Retrieve an existing receipt\&quot;,\&quot;response\&quot;:\&quot;getreceiptByID.html\&quot;}
    # @param receipt_id ID of the receipt.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(ReceiptPagedMetadata, Fixnum, Hash)>] ReceiptPagedMetadata data, response status code and response headers
    def get_receipt_by_id_with_http_info(receipt_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReceiptsApi.get_receipt_by_id ..."
      end
      # verify the required parameter 'receipt_id' is set
      fail ArgumentError, "Missing the required parameter 'receipt_id' when calling ReceiptsApi.get_receipt_by_id" if receipt_id.nil?
      # resource path
      local_var_path = "/receipts/{receipt-ID}".sub('{format}','json').sub('{' + 'receipt-ID' + '}', receipt_id.to_s)

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
        :return_type => 'ReceiptPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceiptsApi#get_receipt_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a receipt for the receipt payment.
    # {\"nickname\":\"Retrieve by invoice\",\"response\":\"getreceiptsByInvoice.html\"}
    # @param invoice_id ID of the Invoice.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first receipt to return. (default to 0)
    # @option opts [Integer] :records The maximum number of receipts to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @return [ReceiptPagedMetadata]
    def get_receipts_by_invoice(invoice_id, opts = {})
      data, _status_code, _headers = get_receipts_by_invoice_with_http_info(invoice_id, opts)
      return data
    end

    # Returns a receipt for the receipt payment.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by invoice\&quot;,\&quot;response\&quot;:\&quot;getreceiptsByInvoice.html\&quot;}
    # @param invoice_id ID of the Invoice.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first receipt to return.
    # @option opts [Integer] :records The maximum number of receipts to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @return [Array<(ReceiptPagedMetadata, Fixnum, Hash)>] ReceiptPagedMetadata data, response status code and response headers
    def get_receipts_by_invoice_with_http_info(invoice_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReceiptsApi.get_receipts_by_invoice ..."
      end
      # verify the required parameter 'invoice_id' is set
      fail ArgumentError, "Missing the required parameter 'invoice_id' when calling ReceiptsApi.get_receipts_by_invoice" if invoice_id.nil?
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/receipts/invoice/{invoice-ID}".sub('{format}','json').sub('{' + 'invoice-ID' + '}', invoice_id.to_s)

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
        :return_type => 'ReceiptPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceiptsApi#get_receipts_by_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of receipts for the payment.
    # {\"nickname\":\"Retrieve by payment\",\"response\":\"getreceiptsByPayment.html\"}
    # @param payment_id ID of the payment.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first receipt to return. (default to 0)
    # @option opts [Integer] :records The maximum number of receipts to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @return [ReceiptPagedMetadata]
    def get_receipts_by_payment(payment_id, opts = {})
      data, _status_code, _headers = get_receipts_by_payment_with_http_info(payment_id, opts)
      return data
    end

    # Returns a collection of receipts for the payment.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by payment\&quot;,\&quot;response\&quot;:\&quot;getreceiptsByPayment.html\&quot;}
    # @param payment_id ID of the payment.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first receipt to return.
    # @option opts [Integer] :records The maximum number of receipts to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @return [Array<(ReceiptPagedMetadata, Fixnum, Hash)>] ReceiptPagedMetadata data, response status code and response headers
    def get_receipts_by_payment_with_http_info(payment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReceiptsApi.get_receipts_by_payment ..."
      end
      # verify the required parameter 'payment_id' is set
      fail ArgumentError, "Missing the required parameter 'payment_id' when calling ReceiptsApi.get_receipts_by_payment" if payment_id.nil?
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/receipts/payment/{payment-ID}".sub('{format}','json').sub('{' + 'payment-ID' + '}', payment_id.to_s)

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
        :return_type => 'ReceiptPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceiptsApi#get_receipts_by_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves debit payments in CSV format.
    # { \"nickname\":\"Debit payments CSV\",\"response\":\"Debit payments.csv\"}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [String] :received_start The UTC DateTime specifying the start of the interval within which payments were received.
    # @option opts [String] :received_end The UTC DateTime specifying the end of the interval within which payments were received.
    # @option opts [Integer] :offset The offset from the first payment to return.
    # @option opts [Integer] :records The maximum number of payments to return.
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order The direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [Array<String>] :gateway A list of payment gateways to include in the account.  If none are specified, all gateways will be included.
    # @return [ReceiptPagedMetadata]
    def get_receipts_for_debit_payments_as_csv(opts = {})
      data, _status_code, _headers = get_receipts_for_debit_payments_as_csv_with_http_info(opts)
      return data
    end

    # Retrieves debit payments in CSV format.
    # { \&quot;nickname\&quot;:\&quot;Debit payments CSV\&quot;,\&quot;response\&quot;:\&quot;Debit payments.csv\&quot;}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [String] :received_start The UTC DateTime specifying the start of the interval within which payments were received.
    # @option opts [String] :received_end The UTC DateTime specifying the end of the interval within which payments were received.
    # @option opts [Integer] :offset The offset from the first payment to return.
    # @option opts [Integer] :records The maximum number of payments to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order The direction of any ordering, either ASC or DESC.
    # @option opts [Array<String>] :gateway A list of payment gateways to include in the account.  If none are specified, all gateways will be included.
    # @return [Array<(ReceiptPagedMetadata, Fixnum, Hash)>] ReceiptPagedMetadata data, response status code and response headers
    def get_receipts_for_debit_payments_as_csv_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReceiptsApi.get_receipts_for_debit_payments_as_csv ..."
      end
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      if opts[:'gateway'] && !['cybersource_token', 'card_vault', 'paypal_simple', 'locustworld', 'free', 'coupon', 'credit_note', 'stripe', 'braintree', 'balanced', 'paypal', 'billforward_test', 'offline', 'trial', 'stripeACH', 'authorizeNet', 'spreedly', 'sagePay', 'trustCommerce', 'payvision', 'kash'].include?(opts[:'gateway'])
        fail ArgumentError, 'invalid value for "gateway", must be one of cybersource_token, card_vault, paypal_simple, locustworld, free, coupon, credit_note, stripe, braintree, balanced, paypal, billforward_test, offline, trial, stripeACH, authorizeNet, spreedly, sagePay, trustCommerce, payvision, kash'
      end
      # resource path
      local_var_path = "/receipts/debits.csv".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(opts[:'organizations'], :multi) if !opts[:'organizations'].nil?
      query_params[:'received_start'] = opts[:'received_start'] if !opts[:'received_start'].nil?
      query_params[:'received_end'] = opts[:'received_end'] if !opts[:'received_end'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'records'] = opts[:'records'] if !opts[:'records'].nil?
      query_params[:'order_by'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'gateway'] = @api_client.build_collection_param(opts[:'gateway'], :multi) if !opts[:'gateway'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['text/csv']
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
        :return_type => 'ReceiptPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceiptsApi#get_receipts_for_debit_payments_as_csv\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves refunded payments in CSV format.
    # { \"nickname\":\"Refunded payments CSV\",\"response\":\"Refunded payments.csv\"}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [String] :completed_start The UTC DateTime specifying the start of the interval within which payments were received.
    # @option opts [String] :completed_end The UTC DateTime specifying the end of the interval within which payments were received.
    # @option opts [Integer] :offset The offset from the first payment to return.
    # @option opts [Integer] :records The maximum number of payments to return.
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order The direction of any ordering, either ASC or DESC. (default to DESC)
    # @return [ReceiptPagedMetadata]
    def get_receipts_for_refund_payments_as_csv(opts = {})
      data, _status_code, _headers = get_receipts_for_refund_payments_as_csv_with_http_info(opts)
      return data
    end

    # Retrieves refunded payments in CSV format.
    # { \&quot;nickname\&quot;:\&quot;Refunded payments CSV\&quot;,\&quot;response\&quot;:\&quot;Refunded payments.csv\&quot;}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [String] :completed_start The UTC DateTime specifying the start of the interval within which payments were received.
    # @option opts [String] :completed_end The UTC DateTime specifying the end of the interval within which payments were received.
    # @option opts [Integer] :offset The offset from the first payment to return.
    # @option opts [Integer] :records The maximum number of payments to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order The direction of any ordering, either ASC or DESC.
    # @return [Array<(ReceiptPagedMetadata, Fixnum, Hash)>] ReceiptPagedMetadata data, response status code and response headers
    def get_receipts_for_refund_payments_as_csv_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReceiptsApi.get_receipts_for_refund_payments_as_csv ..."
      end
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/receipts/refunds.csv".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(opts[:'organizations'], :multi) if !opts[:'organizations'].nil?
      query_params[:'completed_start'] = opts[:'completed_start'] if !opts[:'completed_start'].nil?
      query_params[:'completed_end'] = opts[:'completed_end'] if !opts[:'completed_end'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'records'] = opts[:'records'] if !opts[:'records'].nil?
      query_params[:'order_by'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['text/csv']
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
        :return_type => 'ReceiptPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceiptsApi#get_receipts_for_refund_payments_as_csv\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
