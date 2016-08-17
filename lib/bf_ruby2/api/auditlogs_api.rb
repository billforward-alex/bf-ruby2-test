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
  class AuditlogsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Returns a collection of all audit-log objects. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Get all\",\"response\":\"getAuditAll.html\"}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first audit-log entry to return. (default to 0)
    # @option opts [Integer] :records The maximum number of audit-log entry to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned. (default to true)
    # @return [AuditEntryPagedMetadata]
    def get_all_audit_entries(opts = {})
      data, _status_code, _headers = get_all_audit_entries_with_http_info(opts)
      return data
    end

    # Returns a collection of all audit-log objects. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Get all\&quot;,\&quot;response\&quot;:\&quot;getAuditAll.html\&quot;}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first audit-log entry to return.
    # @option opts [Integer] :records The maximum number of audit-log entry to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
    # @return [Array<(AuditEntryPagedMetadata, Fixnum, Hash)>] AuditEntryPagedMetadata data, response status code and response headers
    def get_all_audit_entries_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuditlogsApi.get_all_audit_entries ..."
      end
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/audit-logs".sub('{format}','json')

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
        :return_type => 'AuditEntryPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuditlogsApi#get_all_audit_entries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of audit-log objects with created times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Retrieve by created time\",\"response\":\"getAuditByCreated.html\"}
    # @param lower_threshold The UTC DateTime specifying the start of the result period.
    # @param upper_threshold The UTC DateTime specifying the end of the result period.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first audit-log entry to return. (default to 0)
    # @option opts [Integer] :records The maximum number of audit-log entry to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned. (default to true)
    # @return [AuditEntryPagedMetadata]
    def get_audit_entries_by_created_date(lower_threshold, upper_threshold, opts = {})
      data, _status_code, _headers = get_audit_entries_by_created_date_with_http_info(lower_threshold, upper_threshold, opts)
      return data
    end

    # Returns a collection of audit-log objects with created times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by created time\&quot;,\&quot;response\&quot;:\&quot;getAuditByCreated.html\&quot;}
    # @param lower_threshold The UTC DateTime specifying the start of the result period.
    # @param upper_threshold The UTC DateTime specifying the end of the result period.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first audit-log entry to return.
    # @option opts [Integer] :records The maximum number of audit-log entry to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
    # @return [Array<(AuditEntryPagedMetadata, Fixnum, Hash)>] AuditEntryPagedMetadata data, response status code and response headers
    def get_audit_entries_by_created_date_with_http_info(lower_threshold, upper_threshold, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuditlogsApi.get_audit_entries_by_created_date ..."
      end
      # verify the required parameter 'lower_threshold' is set
      fail ArgumentError, "Missing the required parameter 'lower_threshold' when calling AuditlogsApi.get_audit_entries_by_created_date" if lower_threshold.nil?
      # verify the required parameter 'upper_threshold' is set
      fail ArgumentError, "Missing the required parameter 'upper_threshold' when calling AuditlogsApi.get_audit_entries_by_created_date" if upper_threshold.nil?
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/audit-logs/created/{lower-threshold}/{upper-threshold}".sub('{format}','json').sub('{' + 'lower-threshold' + '}', lower_threshold.to_s).sub('{' + 'upper-threshold' + '}', upper_threshold.to_s)

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
        :return_type => 'AuditEntryPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuditlogsApi#get_audit_entries_by_created_date\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of audit-log entries, specified by the entity-ID parameter. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Retrieve by entity-ID\",\"response\":\"getAuditByEntityID.html\"}
    # @param entity_id The string ID of the entity whose changes are documented by the audit log.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first account to return. (default to 0)
    # @option opts [Integer] :records The maximum number of accounts to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned. (default to true)
    # @return [AuditEntryPagedMetadata]
    def get_audit_entry_by_entity_id(entity_id, opts = {})
      data, _status_code, _headers = get_audit_entry_by_entity_id_with_http_info(entity_id, opts)
      return data
    end

    # Returns a collection of audit-log entries, specified by the entity-ID parameter. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by entity-ID\&quot;,\&quot;response\&quot;:\&quot;getAuditByEntityID.html\&quot;}
    # @param entity_id The string ID of the entity whose changes are documented by the audit log.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first account to return.
    # @option opts [Integer] :records The maximum number of accounts to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
    # @return [Array<(AuditEntryPagedMetadata, Fixnum, Hash)>] AuditEntryPagedMetadata data, response status code and response headers
    def get_audit_entry_by_entity_id_with_http_info(entity_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuditlogsApi.get_audit_entry_by_entity_id ..."
      end
      # verify the required parameter 'entity_id' is set
      fail ArgumentError, "Missing the required parameter 'entity_id' when calling AuditlogsApi.get_audit_entry_by_entity_id" if entity_id.nil?
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/audit-logs/entity/{entity-ID}".sub('{format}','json').sub('{' + 'entity-ID' + '}', entity_id.to_s)

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
        :return_type => 'AuditEntryPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuditlogsApi#get_audit_entry_by_entity_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of audit-log entries, specified by the entity-type parameter. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Retrieve by entity type\",\"response\":\"getAuditByEntityType.html\"}
    # @param entity_type The type of the entity whose changes are documented by the audit log.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first account to return. (default to 0)
    # @option opts [Integer] :records The maximum number of accounts to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned. (default to true)
    # @return [AuditEntryPagedMetadata]
    def get_audit_entry_by_entity_type(entity_type, opts = {})
      data, _status_code, _headers = get_audit_entry_by_entity_type_with_http_info(entity_type, opts)
      return data
    end

    # Returns a collection of audit-log entries, specified by the entity-type parameter. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by entity type\&quot;,\&quot;response\&quot;:\&quot;getAuditByEntityType.html\&quot;}
    # @param entity_type The type of the entity whose changes are documented by the audit log.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first account to return.
    # @option opts [Integer] :records The maximum number of accounts to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
    # @return [Array<(AuditEntryPagedMetadata, Fixnum, Hash)>] AuditEntryPagedMetadata data, response status code and response headers
    def get_audit_entry_by_entity_type_with_http_info(entity_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuditlogsApi.get_audit_entry_by_entity_type ..."
      end
      # verify the required parameter 'entity_type' is set
      fail ArgumentError, "Missing the required parameter 'entity_type' when calling AuditlogsApi.get_audit_entry_by_entity_type" if entity_type.nil?
      # verify enum value
      unless ['Notification', 'Organization', 'OrganizationGateway', 'Product', 'User', 'Subscription', 'Profile', 'ProductRatePlan', 'Client', 'Invoice', 'PricingComponentValue', 'Account', 'PricingComponentValueChange', 'PricingComponentTier', 'PricingComponent', 'PricingCalculation', 'CouponDefinition', 'CouponInstance', 'CouponModifier', 'CouponRule', 'CouponBookDefinition', 'CouponBook', 'InvoiceLine', 'Webhook', 'SubscriptionCancellation', 'NotificationSnapshot', 'InvoicePayment', 'InvoiceLinePayment', 'Payment', 'PaymentMethod', 'PaymentMethodSubscriptionLink', 'DunningLine', 'CybersourceToken', 'Card', 'Alias', 'PaypalSimplePaymentReconciliation', 'FreePaymentReconciliation', 'LocustworldPaymentReconciliation', 'CouponInstanceExistingValue', 'TaxLine', 'TaxationStrategy', 'TaxationLink', 'Address', 'AmendmentPriceNTime', 'Authority', 'UnitOfMeasure', 'SearchResult', 'Amendment', 'AuditLog', 'Password', 'Username', 'FixedTermDefinition', 'FixedTerm', 'Refund', 'CreditNote', 'Receipt', 'AmendmentCompoundConstituent', 'APIConfiguration', 'StripeToken', 'BraintreeToken', 'BalancedToken', 'PaypalToken', 'AuthorizeNetToken', 'SpreedlyToken', 'GatewayRevenue', 'AmendmentDiscardAmendment', 'CancellationAmendment', 'CompoundAmendment', 'CompoundAmendmentConstituent', 'FixedTermExpiryAmendment', 'InvoiceNextExecutionAttemptAmendment', 'PricingComponentValueAmendment', 'BraintreeMerchantAccount', 'WebhookSubscription', 'Migration', 'CassResult', 'CassPaymentResult', 'CassProductRatePlanResult', 'CassChurnResult', 'CassUpgradeResult', 'SubscriptionCharge', 'CassPaymentPProductResult', 'ProductPaymentsArgs', 'StripeACHToken', 'UsageAmount', 'UsageSession', 'Usage', 'UsagePeriod', 'Period', 'OfflinePayment', 'CreditNotePayment', 'CardVaultPayment', 'FreePayment', 'BraintreePayment', 'BalancedPayment', 'CybersourcePayment', 'PaypalPayment', 'PaypalSimplePayment', 'LocustWorldPayment', 'StripeOnlyPayment', 'ProductPaymentsResult', 'StripeACHPayment', 'AuthorizeNetPayment', 'CompoundUsageSession', 'CompoundUsage', 'UsageRoundingStrategies', 'BillforwardManagedPaymentsResult', 'PricingComponentValueMigrationChargeAmendmentMapping', 'SubscriptionLTVResult', 'AccountLTVResult', 'ProductRatePlanPaymentsResult', 'DebtsResult', 'AccountPaymentsResult', 'ComponentChange', 'QuoteRequest', 'Quote', 'CouponCharge', 'CouponInstanceInvoiceLink', 'Coupon', 'CouponDiscount', 'CouponUniqueCodesRequest', 'CouponUniqueCodesResponse', 'GetCouponsResponse', 'AddCouponCodeRequest', 'AddCouponCodeResponse', 'RemoveCouponFromSubscriptionRequest', 'TokenizationPreAuth', 'StripeTokenizationPreAuth', 'BraintreeTokenizationPreAuth', 'SpreedlyTokenizationPreAuth', 'SagePayTokenizationPreAuth', 'PayVisionTokenizationPreAuth', 'TokenizationPreAuthRequest', 'AuthCaptureRequest', 'StripeACHBankAccountVerification', 'PasswordReset', 'PricingRequest', 'AddTaxationStrategyRequest', 'AddPaymentMethodRequest', 'APIRequest', 'SagePayToken', 'SagePayNotificationRequest', 'SagePayNotificationResponse', 'SagePayOutstandingTransaction', 'SagePayEnabledCardType', 'TrustCommerceToken', 'SagePayTransaction', 'PricingComponentValueResponse', 'MigrationResponse', 'TimeResponse', 'EntityTime', 'Email', 'AggregationLink', 'BFPermission', 'Role', 'PermissionLink', 'PayVisionToken', 'PayVisionTransaction', 'KashToken', 'EmailProvider', 'DataSynchronizationJob', 'DataSynchronizationJobError', 'DataSynchronizationConfiguration', 'DataSynchronizationAppConfiguration', 'AggregationChildrenResponse', 'MetadataKeyValue', 'Metadata', 'AggregatingComponent', 'PricingComponentMigrationValue', 'InvoiceRecalculationAmendment', 'IssueInvoiceAmendment', 'EmailSubscription', 'RevenueAttribution'].include?(entity_type)
        fail ArgumentError, "invalid value for 'entity_type', must be one of Notification, Organization, OrganizationGateway, Product, User, Subscription, Profile, ProductRatePlan, Client, Invoice, PricingComponentValue, Account, PricingComponentValueChange, PricingComponentTier, PricingComponent, PricingCalculation, CouponDefinition, CouponInstance, CouponModifier, CouponRule, CouponBookDefinition, CouponBook, InvoiceLine, Webhook, SubscriptionCancellation, NotificationSnapshot, InvoicePayment, InvoiceLinePayment, Payment, PaymentMethod, PaymentMethodSubscriptionLink, DunningLine, CybersourceToken, Card, Alias, PaypalSimplePaymentReconciliation, FreePaymentReconciliation, LocustworldPaymentReconciliation, CouponInstanceExistingValue, TaxLine, TaxationStrategy, TaxationLink, Address, AmendmentPriceNTime, Authority, UnitOfMeasure, SearchResult, Amendment, AuditLog, Password, Username, FixedTermDefinition, FixedTerm, Refund, CreditNote, Receipt, AmendmentCompoundConstituent, APIConfiguration, StripeToken, BraintreeToken, BalancedToken, PaypalToken, AuthorizeNetToken, SpreedlyToken, GatewayRevenue, AmendmentDiscardAmendment, CancellationAmendment, CompoundAmendment, CompoundAmendmentConstituent, FixedTermExpiryAmendment, InvoiceNextExecutionAttemptAmendment, PricingComponentValueAmendment, BraintreeMerchantAccount, WebhookSubscription, Migration, CassResult, CassPaymentResult, CassProductRatePlanResult, CassChurnResult, CassUpgradeResult, SubscriptionCharge, CassPaymentPProductResult, ProductPaymentsArgs, StripeACHToken, UsageAmount, UsageSession, Usage, UsagePeriod, Period, OfflinePayment, CreditNotePayment, CardVaultPayment, FreePayment, BraintreePayment, BalancedPayment, CybersourcePayment, PaypalPayment, PaypalSimplePayment, LocustWorldPayment, StripeOnlyPayment, ProductPaymentsResult, StripeACHPayment, AuthorizeNetPayment, CompoundUsageSession, CompoundUsage, UsageRoundingStrategies, BillforwardManagedPaymentsResult, PricingComponentValueMigrationChargeAmendmentMapping, SubscriptionLTVResult, AccountLTVResult, ProductRatePlanPaymentsResult, DebtsResult, AccountPaymentsResult, ComponentChange, QuoteRequest, Quote, CouponCharge, CouponInstanceInvoiceLink, Coupon, CouponDiscount, CouponUniqueCodesRequest, CouponUniqueCodesResponse, GetCouponsResponse, AddCouponCodeRequest, AddCouponCodeResponse, RemoveCouponFromSubscriptionRequest, TokenizationPreAuth, StripeTokenizationPreAuth, BraintreeTokenizationPreAuth, SpreedlyTokenizationPreAuth, SagePayTokenizationPreAuth, PayVisionTokenizationPreAuth, TokenizationPreAuthRequest, AuthCaptureRequest, StripeACHBankAccountVerification, PasswordReset, PricingRequest, AddTaxationStrategyRequest, AddPaymentMethodRequest, APIRequest, SagePayToken, SagePayNotificationRequest, SagePayNotificationResponse, SagePayOutstandingTransaction, SagePayEnabledCardType, TrustCommerceToken, SagePayTransaction, PricingComponentValueResponse, MigrationResponse, TimeResponse, EntityTime, Email, AggregationLink, BFPermission, Role, PermissionLink, PayVisionToken, PayVisionTransaction, KashToken, EmailProvider, DataSynchronizationJob, DataSynchronizationJobError, DataSynchronizationConfiguration, DataSynchronizationAppConfiguration, AggregationChildrenResponse, MetadataKeyValue, Metadata, AggregatingComponent, PricingComponentMigrationValue, InvoiceRecalculationAmendment, IssueInvoiceAmendment, EmailSubscription, RevenueAttribution"
      end
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/audit-logs/entity-type/{entity-type}".sub('{format}','json').sub('{' + 'entity-type' + '}', entity_type.to_s)

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
        :return_type => 'AuditEntryPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuditlogsApi#get_audit_entry_by_entity_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a single audit-log entry, specified by the audit-ID parameter.
    # {\"nickname\":\"Retrieve by id\",\"response\":\"getAuditByID.html\"}
    # @param audit_id The string ID of the audit-log entry.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls. Multiple organization-IDs may be specified by repeated use of the query parameter. Example: ...&amp;organizations&#x3D;org1&amp;organizations&#x3D;org2
    # @return [AuditEntryPagedMetadata]
    def get_audit_entry_by_id(audit_id, opts = {})
      data, _status_code, _headers = get_audit_entry_by_id_with_http_info(audit_id, opts)
      return data
    end

    # Returns a single audit-log entry, specified by the audit-ID parameter.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by id\&quot;,\&quot;response\&quot;:\&quot;getAuditByID.html\&quot;}
    # @param audit_id The string ID of the audit-log entry.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls. Multiple organization-IDs may be specified by repeated use of the query parameter. Example: ...&amp;organizations&#x3D;org1&amp;organizations&#x3D;org2
    # @return [Array<(AuditEntryPagedMetadata, Fixnum, Hash)>] AuditEntryPagedMetadata data, response status code and response headers
    def get_audit_entry_by_id_with_http_info(audit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuditlogsApi.get_audit_entry_by_id ..."
      end
      # verify the required parameter 'audit_id' is set
      fail ArgumentError, "Missing the required parameter 'audit_id' when calling AuditlogsApi.get_audit_entry_by_id" if audit_id.nil?
      # resource path
      local_var_path = "/audit-logs/{audit-ID}".sub('{format}','json').sub('{' + 'audit-ID' + '}', audit_id.to_s)

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
        :return_type => 'AuditEntryPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuditlogsApi#get_audit_entry_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
