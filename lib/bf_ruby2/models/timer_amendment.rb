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

require 'date'

module BillForward

  class TimerAmendment
    # { \"description\" : \"The UTC DateTime when the object was created.\", \"verbs\":[] }
    attr_accessor :created

    # { \"description\" : \"ID of the user who last updated the entity.\", \"verbs\":[] }
    attr_accessor :changed_by

    # { \"description\" : \"The UTC DateTime when the object was last updated.\", \"verbs\":[] }
    attr_accessor :updated

    # { \"description\" : \"\", \"default\" : \"\", \"verbs\":[\"POST\",\"GET\"] }
    attr_accessor :type

    # { \"description\" : \"\", \"verbs\":[\"GET\"] }
    attr_accessor :id

    # { \"description\" : \"\", \"verbs\":[\"\"] }
    attr_accessor :organization_id

    # { \"description\" : \"\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :subscription_id

    # { \"description\" : \"Type of amendment\", \"verbs\":[\"POST\",\"GET\"] }
    attr_accessor :amendment_type

    # { \"description\" : \"When the amendment will run\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :actioning_time

    # { \"description\" : \"The time the amendment completed.\", \"verbs\":[\"GET\"] }
    attr_accessor :actioned_time

    # Whether the subscription-amendment is: pending (to be actioned in the future), succeeded (actioning completed), failed (actioning was attempted but no effect was made) or discarded (the amendment had been cancelled before being actioned). Default: Pending
    attr_accessor :state

    # { \"description\" : \"Is the amendment deleted.\", \"verbs\":[\"GET\"] }
    attr_accessor :deleted

    attr_accessor :entity_id

    attr_accessor :entity

    attr_accessor :offset_direction

    attr_accessor :offset_period

    attr_accessor :offset_duration

    attr_accessor :original_event_date

    attr_accessor :timer_event

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'created' => :'created',
        :'changed_by' => :'changedBy',
        :'updated' => :'updated',
        :'type' => :'@type',
        :'id' => :'id',
        :'organization_id' => :'organizationID',
        :'subscription_id' => :'subscriptionID',
        :'amendment_type' => :'amendmentType',
        :'actioning_time' => :'actioningTime',
        :'actioned_time' => :'actionedTime',
        :'state' => :'state',
        :'deleted' => :'deleted',
        :'entity_id' => :'entityID',
        :'entity' => :'entity',
        :'offset_direction' => :'offsetDirection',
        :'offset_period' => :'offsetPeriod',
        :'offset_duration' => :'offsetDuration',
        :'original_event_date' => :'originalEventDate',
        :'timer_event' => :'timerEvent'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'created' => :'DateTime',
        :'changed_by' => :'String',
        :'updated' => :'DateTime',
        :'type' => :'String',
        :'id' => :'String',
        :'organization_id' => :'String',
        :'subscription_id' => :'String',
        :'amendment_type' => :'String',
        :'actioning_time' => :'DateTime',
        :'actioned_time' => :'DateTime',
        :'state' => :'String',
        :'deleted' => :'BOOLEAN',
        :'entity_id' => :'String',
        :'entity' => :'String',
        :'offset_direction' => :'String',
        :'offset_period' => :'String',
        :'offset_duration' => :'Integer',
        :'original_event_date' => :'DateTime',
        :'timer_event' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.has_key?(:'changedBy')
        self.changed_by = attributes[:'changedBy']
      end

      if attributes.has_key?(:'updated')
        self.updated = attributes[:'updated']
      end

      if attributes.has_key?(:'@type')
        self.type = attributes[:'@type']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'organizationID')
        self.organization_id = attributes[:'organizationID']
      end

      if attributes.has_key?(:'subscriptionID')
        self.subscription_id = attributes[:'subscriptionID']
      end

      if attributes.has_key?(:'amendmentType')
        self.amendment_type = attributes[:'amendmentType']
      end

      if attributes.has_key?(:'actioningTime')
        self.actioning_time = attributes[:'actioningTime']
      end

      if attributes.has_key?(:'actionedTime')
        self.actioned_time = attributes[:'actionedTime']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'deleted')
        self.deleted = attributes[:'deleted']
      else
        self.deleted = false
      end

      if attributes.has_key?(:'entityID')
        self.entity_id = attributes[:'entityID']
      end

      if attributes.has_key?(:'entity')
        self.entity = attributes[:'entity']
      end

      if attributes.has_key?(:'offsetDirection')
        self.offset_direction = attributes[:'offsetDirection']
      end

      if attributes.has_key?(:'offsetPeriod')
        self.offset_period = attributes[:'offsetPeriod']
      end

      if attributes.has_key?(:'offsetDuration')
        self.offset_duration = attributes[:'offsetDuration']
      end

      if attributes.has_key?(:'originalEventDate')
        self.original_event_date = attributes[:'originalEventDate']
      end

      if attributes.has_key?(:'timerEvent')
        self.timer_event = attributes[:'timerEvent']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["InvoiceOutstandingChargesAmendment", "IssueInvoiceAmendment", "PricingComponentValueAmendment", "InvoiceRecalculationAmendment", "CancellationAmendment", "InvoiceNextExecutionAttemptAmendment", "FixedTermExpiryAmendment", "EndTrialAmendment", "ProductRatePlanMigrationAmendment", "AmendmentDiscardAmendment", "UpdateComponentValueAmendment", "ServiceEndAmendment", "ResumeSubscriptionAmendment", "CreateSubscriptionChargeAmendment", "TimerAmendment"])
      return false unless type_validator.valid?(@type)
      return false if @subscription_id.nil?
      return false if @amendment_type.nil?
      amendment_type_validator = EnumAttributeValidator.new('String', ["InvoiceNextExecutionAttempt", "Cancellation", "PricingComponentValue", "AmendmentDiscard", "Compound", "FixedTermExpiry", "InvoiceRecalculation", "EndTrial", "InvoiceOutstandingCharges", "IssueInvoice", "ProductRatePlanMigration", "UpdateComponentValue", "ServiceEnd", "ResumeSubscription", "CreateSubscriptionCharge", "Timer"])
      return false unless amendment_type_validator.valid?(@amendment_type)
      return false if @state.nil?
      state_validator = EnumAttributeValidator.new('String', ["Pending", "Succeeded", "Failed", "Discarded"])
      return false unless state_validator.valid?(@state)
      return false if @deleted.nil?
      entity_validator = EnumAttributeValidator.new('String', ["Notification", "Organization", "OrganizationGateway", "Product", "User", "Subscription", "Profile", "ProductRatePlan", "Client", "Invoice", "PricingComponentValue", "Account", "PricingComponentValueChange", "PricingComponentTier", "PricingComponent", "PricingCalculation", "CouponDefinition", "CouponInstance", "CouponModifier", "CouponRule", "CouponBookDefinition", "CouponBook", "InvoiceLine", "Webhook", "SubscriptionCancellation", "NotificationSnapshot", "InvoicePayment", "InvoiceLinePayment", "Payment", "PaymentMethod", "PaymentMethodSubscriptionLink", "DunningLine", "CybersourceToken", "Card", "Alias", "PaypalSimplePaymentReconciliation", "FreePaymentReconciliation", "LocustworldPaymentReconciliation", "CouponInstanceExistingValue", "TaxLine", "TaxationStrategy", "TaxationLink", "Address", "AmendmentPriceNTime", "Authority", "UnitOfMeasure", "SearchResult", "Amendment", "AuditLog", "Password", "Username", "FixedTermDefinition", "FixedTerm", "Refund", "CreditNote", "Receipt", "AmendmentCompoundConstituent", "APIConfiguration", "StripeToken", "BraintreeToken", "BalancedToken", "PaypalToken", "AuthorizeNetToken", "SpreedlyToken", "GatewayRevenue", "AmendmentDiscardAmendment", "CancellationAmendment", "CompoundAmendment", "CompoundAmendmentConstituent", "FixedTermExpiryAmendment", "InvoiceNextExecutionAttemptAmendment", "PricingComponentValueAmendment", "BraintreeMerchantAccount", "WebhookSubscription", "Migration", "CassResult", "CassPaymentResult", "CassProductRatePlanResult", "CassChurnResult", "CassUpgradeResult", "SubscriptionCharge", "CassPaymentPProductResult", "ProductPaymentsArgs", "StripeACHToken", "UsageAmount", "UsageSession", "Usage", "UsagePeriod", "Period", "OfflinePayment", "CreditNotePayment", "CardVaultPayment", "FreePayment", "BraintreePayment", "BalancedPayment", "CybersourcePayment", "PaypalPayment", "PaypalSimplePayment", "LocustWorldPayment", "StripeOnlyPayment", "ProductPaymentsResult", "StripeACHPayment", "AuthorizeNetPayment", "CompoundUsageSession", "CompoundUsage", "UsageRoundingStrategies", "BillforwardManagedPaymentsResult", "PricingComponentValueMigrationChargeAmendmentMapping", "SubscriptionLTVResult", "AccountLTVResult", "ProductRatePlanPaymentsResult", "DebtsResult", "AccountPaymentsResult", "ComponentChange", "QuoteRequest", "Quote", "CouponCharge", "CouponInstanceInvoiceLink", "Coupon", "CouponDiscount", "CouponUniqueCodesRequest", "CouponUniqueCodesResponse", "GetCouponsResponse", "AddCouponCodeRequest", "AddCouponCodeResponse", "RemoveCouponFromSubscriptionRequest", "TokenizationPreAuth", "StripeTokenizationPreAuth", "BraintreeTokenizationPreAuth", "SpreedlyTokenizationPreAuth", "SagePayTokenizationPreAuth", "PayVisionTokenizationPreAuth", "TokenizationPreAuthRequest", "AuthCaptureRequest", "StripeACHBankAccountVerification", "PasswordReset", "PricingRequest", "AddTaxationStrategyRequest", "AddPaymentMethodRequest", "APIRequest", "SagePayToken", "SagePayNotificationRequest", "SagePayNotificationResponse", "SagePayOutstandingTransaction", "SagePayEnabledCardType", "TrustCommerceToken", "SagePayTransaction", "PricingComponentValueResponse", "MigrationResponse", "TimeResponse", "EntityTime", "Email", "AggregationLink", "BFPermission", "Role", "PermissionLink", "PayVisionToken", "PayVisionTransaction", "KashToken", "EmailProvider", "DataSynchronizationJob", "DataSynchronizationJobError", "DataSynchronizationConfiguration", "DataSynchronizationAppConfiguration", "AggregationChildrenResponse", "MetadataKeyValue", "Metadata", "AggregatingComponent", "PricingComponentMigrationValue", "InvoiceRecalculationAmendment", "IssueInvoiceAmendment", "EmailSubscription", "RevenueAttribution"])
      return false unless entity_validator.valid?(@entity)
      offset_direction_validator = EnumAttributeValidator.new('String', ["Before", "After"])
      return false unless offset_direction_validator.valid?(@offset_direction)
      offset_period_validator = EnumAttributeValidator.new('String', ["Minutes", "Hours", "Days"])
      return false unless offset_period_validator.valid?(@offset_period)
      timer_event_validator = EnumAttributeValidator.new('String', ["TrialExpiry", "SubscriptionExpiry", "PeriodEnd"])
      return false unless timer_event_validator.valid?(@timer_event)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["InvoiceOutstandingChargesAmendment", "IssueInvoiceAmendment", "PricingComponentValueAmendment", "InvoiceRecalculationAmendment", "CancellationAmendment", "InvoiceNextExecutionAttemptAmendment", "FixedTermExpiryAmendment", "EndTrialAmendment", "ProductRatePlanMigrationAmendment", "AmendmentDiscardAmendment", "UpdateComponentValueAmendment", "ServiceEndAmendment", "ResumeSubscriptionAmendment", "CreateSubscriptionChargeAmendment", "TimerAmendment"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amendment_type Object to be assigned
    def amendment_type=(amendment_type)
      validator = EnumAttributeValidator.new('String', ["InvoiceNextExecutionAttempt", "Cancellation", "PricingComponentValue", "AmendmentDiscard", "Compound", "FixedTermExpiry", "InvoiceRecalculation", "EndTrial", "InvoiceOutstandingCharges", "IssueInvoice", "ProductRatePlanMigration", "UpdateComponentValue", "ServiceEnd", "ResumeSubscription", "CreateSubscriptionCharge", "Timer"])
      unless validator.valid?(amendment_type)
        fail ArgumentError, "invalid value for 'amendment_type', must be one of #{validator.allowable_values}."
      end
      @amendment_type = amendment_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ["Pending", "Succeeded", "Failed", "Discarded"])
      unless validator.valid?(state)
        fail ArgumentError, "invalid value for 'state', must be one of #{validator.allowable_values}."
      end
      @state = state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] entity Object to be assigned
    def entity=(entity)
      validator = EnumAttributeValidator.new('String', ["Notification", "Organization", "OrganizationGateway", "Product", "User", "Subscription", "Profile", "ProductRatePlan", "Client", "Invoice", "PricingComponentValue", "Account", "PricingComponentValueChange", "PricingComponentTier", "PricingComponent", "PricingCalculation", "CouponDefinition", "CouponInstance", "CouponModifier", "CouponRule", "CouponBookDefinition", "CouponBook", "InvoiceLine", "Webhook", "SubscriptionCancellation", "NotificationSnapshot", "InvoicePayment", "InvoiceLinePayment", "Payment", "PaymentMethod", "PaymentMethodSubscriptionLink", "DunningLine", "CybersourceToken", "Card", "Alias", "PaypalSimplePaymentReconciliation", "FreePaymentReconciliation", "LocustworldPaymentReconciliation", "CouponInstanceExistingValue", "TaxLine", "TaxationStrategy", "TaxationLink", "Address", "AmendmentPriceNTime", "Authority", "UnitOfMeasure", "SearchResult", "Amendment", "AuditLog", "Password", "Username", "FixedTermDefinition", "FixedTerm", "Refund", "CreditNote", "Receipt", "AmendmentCompoundConstituent", "APIConfiguration", "StripeToken", "BraintreeToken", "BalancedToken", "PaypalToken", "AuthorizeNetToken", "SpreedlyToken", "GatewayRevenue", "AmendmentDiscardAmendment", "CancellationAmendment", "CompoundAmendment", "CompoundAmendmentConstituent", "FixedTermExpiryAmendment", "InvoiceNextExecutionAttemptAmendment", "PricingComponentValueAmendment", "BraintreeMerchantAccount", "WebhookSubscription", "Migration", "CassResult", "CassPaymentResult", "CassProductRatePlanResult", "CassChurnResult", "CassUpgradeResult", "SubscriptionCharge", "CassPaymentPProductResult", "ProductPaymentsArgs", "StripeACHToken", "UsageAmount", "UsageSession", "Usage", "UsagePeriod", "Period", "OfflinePayment", "CreditNotePayment", "CardVaultPayment", "FreePayment", "BraintreePayment", "BalancedPayment", "CybersourcePayment", "PaypalPayment", "PaypalSimplePayment", "LocustWorldPayment", "StripeOnlyPayment", "ProductPaymentsResult", "StripeACHPayment", "AuthorizeNetPayment", "CompoundUsageSession", "CompoundUsage", "UsageRoundingStrategies", "BillforwardManagedPaymentsResult", "PricingComponentValueMigrationChargeAmendmentMapping", "SubscriptionLTVResult", "AccountLTVResult", "ProductRatePlanPaymentsResult", "DebtsResult", "AccountPaymentsResult", "ComponentChange", "QuoteRequest", "Quote", "CouponCharge", "CouponInstanceInvoiceLink", "Coupon", "CouponDiscount", "CouponUniqueCodesRequest", "CouponUniqueCodesResponse", "GetCouponsResponse", "AddCouponCodeRequest", "AddCouponCodeResponse", "RemoveCouponFromSubscriptionRequest", "TokenizationPreAuth", "StripeTokenizationPreAuth", "BraintreeTokenizationPreAuth", "SpreedlyTokenizationPreAuth", "SagePayTokenizationPreAuth", "PayVisionTokenizationPreAuth", "TokenizationPreAuthRequest", "AuthCaptureRequest", "StripeACHBankAccountVerification", "PasswordReset", "PricingRequest", "AddTaxationStrategyRequest", "AddPaymentMethodRequest", "APIRequest", "SagePayToken", "SagePayNotificationRequest", "SagePayNotificationResponse", "SagePayOutstandingTransaction", "SagePayEnabledCardType", "TrustCommerceToken", "SagePayTransaction", "PricingComponentValueResponse", "MigrationResponse", "TimeResponse", "EntityTime", "Email", "AggregationLink", "BFPermission", "Role", "PermissionLink", "PayVisionToken", "PayVisionTransaction", "KashToken", "EmailProvider", "DataSynchronizationJob", "DataSynchronizationJobError", "DataSynchronizationConfiguration", "DataSynchronizationAppConfiguration", "AggregationChildrenResponse", "MetadataKeyValue", "Metadata", "AggregatingComponent", "PricingComponentMigrationValue", "InvoiceRecalculationAmendment", "IssueInvoiceAmendment", "EmailSubscription", "RevenueAttribution"])
      unless validator.valid?(entity)
        fail ArgumentError, "invalid value for 'entity', must be one of #{validator.allowable_values}."
      end
      @entity = entity
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] offset_direction Object to be assigned
    def offset_direction=(offset_direction)
      validator = EnumAttributeValidator.new('String', ["Before", "After"])
      unless validator.valid?(offset_direction)
        fail ArgumentError, "invalid value for 'offset_direction', must be one of #{validator.allowable_values}."
      end
      @offset_direction = offset_direction
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] offset_period Object to be assigned
    def offset_period=(offset_period)
      validator = EnumAttributeValidator.new('String', ["Minutes", "Hours", "Days"])
      unless validator.valid?(offset_period)
        fail ArgumentError, "invalid value for 'offset_period', must be one of #{validator.allowable_values}."
      end
      @offset_period = offset_period
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] timer_event Object to be assigned
    def timer_event=(timer_event)
      validator = EnumAttributeValidator.new('String', ["TrialExpiry", "SubscriptionExpiry", "PeriodEnd"])
      unless validator.valid?(timer_event)
        fail ArgumentError, "invalid value for 'timer_event', must be one of #{validator.allowable_values}."
      end
      @timer_event = timer_event
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created == o.created &&
          changed_by == o.changed_by &&
          updated == o.updated &&
          type == o.type &&
          id == o.id &&
          organization_id == o.organization_id &&
          subscription_id == o.subscription_id &&
          amendment_type == o.amendment_type &&
          actioning_time == o.actioning_time &&
          actioned_time == o.actioned_time &&
          state == o.state &&
          deleted == o.deleted &&
          entity_id == o.entity_id &&
          entity == o.entity &&
          offset_direction == o.offset_direction &&
          offset_period == o.offset_period &&
          offset_duration == o.offset_duration &&
          original_event_date == o.original_event_date &&
          timer_event == o.timer_event
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [created, changed_by, updated, type, id, organization_id, subscription_id, amendment_type, actioning_time, actioned_time, state, deleted, entity_id, entity, offset_direction, offset_period, offset_duration, original_event_date, timer_event].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = BillForward.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
