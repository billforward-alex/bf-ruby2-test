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
  # Subscription
  class Subscription
    # { \"description\" : \"The UTC DateTime when the object was created.\", \"verbs\":[] }
    attr_accessor :created

    # { \"description\" : \"ID of the user who last updated the entity.\", \"verbs\":[] }
    attr_accessor :changed_by

    # { \"description\" : \"The UTC DateTime when the object was last updated.\", \"verbs\":[] }
    attr_accessor :updated

    # { \"description\" : \"Add metadata.\", \"verbs\":[\"POST\"] }
    attr_accessor :metadata

    # {\"description\":\"\",\"verbs\":[\"GET\"]}
    attr_accessor :id

    # {\"description\":\"\",\"verbs\":[\"GET\"]}
    attr_accessor :version_id

    # {\"description\":\"\",\"verbs\":[\"POST\",\"PUT\",\"GET\"]}
    attr_accessor :crm_id

    # {\"description\":\"\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :account_id

    # {\"description\":\"Organization associated with the subscription.\",\"verbs\":[]}
    attr_accessor :organization_id

    # {\"description\":\"\",\"verbs\":[\"GET\"]}
    attr_accessor :product_id

    # {\"description\":\"Identifier of the rate-plan being billed for.\",\"verbs\":[\"POST\",\"PUT\",\"GET\"]}
    attr_accessor :product_rate_plan_id

    # {\"description\":\"\",\"verbs\":[\"GET\"]}
    attr_accessor :parent_id

    # {\"description\":\"User definable friendly name for the subscription.\",\"verbs\":[\"POST\",\"PUT\",\"GET\"]}
    attr_accessor :name

    # {\"description\":\"\",\"verbs\":[\"POST\",\"PUT\",\"GET\"]}
    attr_accessor :description

    # {\"default\":\"dependent on product\", \"description\":\"\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :type

    # {\"PUT_description\":\"A <span class=\\\"label label-default\\\">Provisioned</span> subscription can be updated to either <span class=\\\"label label-default\\\">Trial</span> or <span class=\\\"label label-default\\\">AwaitingPayment</span>, this will start the subscription. Any updates to the state of a non-<span class=\\\"label label-default\\\">Provisioned</span> will be ignored. To cancel or otherwise amend a subscription please use the explict amendment calls.\", \"description\":\"A <span class=\\\"label label-default\\\">Provisioned</span> subscription will not begin until marked as <span class=\\\"label label-default\\\">Trial</span> or <span class=\\\"label label-default\\\">AwaitingPayment</span>. Trial subscriptions transition to <span class=\\\"label label-default\\\">AwaitingPayment</span> when the trial period is over. On subscription renewal the state becomes <span class=\\\"label label-default\\\">AwaitingPayment</span>. Once outstanding invoices are paid the state changes to <span class=\\\"label label-default\\\">Paid</span>. A subscription is set as either <span class=\\\"label label-default\\\">Failed</span> or left as <span class=\\\"label label-default\\\">AwaitingPayment</span>, depending on the rate-plan configuration. If a subscription is non-recurring or fixed-term and ends naturally, it will be marked as <span class=\\\"label label-default\\\">Expired</span>. If all payment attempts have failed a subscription is marked as <span class=\\\"label label-default\\\">Cancelled</span> if it has been manually ended. Once a subscription is marked as <span class=\\\"label label-default\\\">Failed</span>, <span class=\\\"label label-default\\\">Expired</span>, or <span class=\\\"label label-default\\\">Cancelled</span> no invoices other than a final invoice will be issued. Note: Updating account card details will not lead to BillForward automatically retrying payment, manual payment attempts can be made.\",\"verbs\":[\"POST\",\"PUT\",\"GET\"]}
    attr_accessor :state

    # {\"description\":\"Start of the current invoice period. At the end of this period, a new new invoice will be generated\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :current_period_start

    # {\"description\":\"End of the current period invoiced for. This can be manually updated to extend trials or delay invoice generation.\",\"verbs\":[\"PUT\",\"GET\"]}
    attr_accessor :current_period_end

    # {\"description\":\"start of the contracted period.  This will be after a trial, if one exists\",\"verbs\":[\"GET\"]}
    attr_accessor :contract_start

    # {\"description\":\"When a subscription will end. This may be in the future if the cancellation is at the end of the current period.\",\"verbs\":[\"GET\"]}
    attr_accessor :subscription_end

    # {\"description\":\"Override for the initial subscription period. Allows periods to align to a date or time regardless of purchase date/time.\",\"verbs\":[\"POST\",\"PUT\",\"GET\"]}
    attr_accessor :current_period_end_explicit

    # {\"description\":\"Start of the first successful period\",\"verbs\":[\"GET\"]}
    attr_accessor :initial_period_start

    # {\"description\":\"Number of paid-for periods billing, excluding trials, since the subscription started.\",\"verbs\":[\"GET\"]}
    attr_accessor :successful_periods

    # {\"description\":\"Total number of subscription periods.\",\"verbs\":[\"GET\"]}
    attr_accessor :total_periods

    # {\"description\":\"The end time of the trial period, if one existed\",\"verbs\":[\"GET\"]}
    attr_accessor :trial_end

    # {  \"default\":\"false\", \"description\":\"Are there outstanding invoices which are currently in dunning.\",\"verbs\":[\"GET\", \"PUT\", \"POST\"]}
    attr_accessor :dunning

    # {\"description\":\"If the subscription is locked, it will not be processed by the system\",\"verbs\":[]}
    attr_accessor :locked

    # {\"description\":\"Which system is responsible for managing the subscription.\",\"verbs\":[]}
    attr_accessor :managed_by

    # {\"description\":\"When the current version of the subscription started.\",\"verbs\":[\"GET\"]}
    attr_accessor :version_start

    # {\"description\":\"When the current version of the subscription ended, null indicates current version.\",\"verbs\":[\"GET\"]}
    attr_accessor :version_end

    # {\"description\":\"Incremental version number of the subscription, starts at 1.\",\"verbs\":[\"GET\"]}
    attr_accessor :version_number

    # {  \"default\":\"true\", \"description\":\"Can credit-notes be used to pay outstanding invoices for this subscription.\",\"verbs\":[\"GET\", \"PUT\", \"POST\"]}
    attr_accessor :credit_enabled

    # {  \"default\":\"true\", \"description\":\"Whether the subscription will aggregate all other subscriptions on the account.\",\"verbs\":[\"GET\", \"PUT\", \"POST\"]}
    attr_accessor :aggregate_all_subscriptions_on_account

    # {\"description\":\"The quantities for each pricing component of the rate-plan. Values should be set for all pricing components of the rate-plan apart from the usage components. Usage components should be added when the usage is known, this is often after the end of the current billing cycle.\",\"verbs\":[\"GET\", \"POST\"]}
    attr_accessor :pricing_component_values

    attr_accessor :payment_method_subscription_links

    # {\"description\":\"List of fixed terms that have been or are applied to the subscription\",\"verbs\":[\"GET\"]}
    attr_accessor :fixed_terms

    # {\"description\":\"The current time &mdash; from the point of view of the subscription.\",\"verbs\":[\"GET\"]}
    attr_accessor :current_time

    # {\"description\":\"How far in the future is the entity (in seconds) compared to the BillForward server's time.\",\"verbs\":[\"GET\"]}
    attr_accessor :time_offset

    attr_accessor :payment_terms

    # {\"default\":\"None\",\"description\":\"The action that should be taken, should an invoice for some subscription to this rate plan remain unpaid despite the dunning period's being exceeded.<br><span class=\\\"label label-default\\\">CancelSubscription</span> &mdash; Demotes the subscription to the `Failed` state as soon as the dunning period is exceeded.<br><span class=\\\"label label-default\\\">None</span> &mdash; The subscription is allowed to continue in the `AwaitingPayment` state indefinitely even if the dunning period is exceeded.For slow payment cycles &mdash; or when manual invoice remediation is common &mdash; <span class=\\\"label label-default\\\">None</span> is recommended.<br>In a heavily-automated SaaS environment, automatic cancellation via <span class=\\\"label label-default\\\">CancelSubscription</span> is recommended.\",\"verbs\":[\"POST\",\"PUT\",\"GET\"]}
    attr_accessor :failed_payment_behaviour

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
        :'metadata' => :'metadata',
        :'id' => :'id',
        :'version_id' => :'versionID',
        :'crm_id' => :'crmID',
        :'account_id' => :'accountID',
        :'organization_id' => :'organizationID',
        :'product_id' => :'productID',
        :'product_rate_plan_id' => :'productRatePlanID',
        :'parent_id' => :'parentID',
        :'name' => :'name',
        :'description' => :'description',
        :'type' => :'type',
        :'state' => :'state',
        :'current_period_start' => :'currentPeriodStart',
        :'current_period_end' => :'currentPeriodEnd',
        :'contract_start' => :'contractStart',
        :'subscription_end' => :'subscriptionEnd',
        :'current_period_end_explicit' => :'currentPeriodEndExplicit',
        :'initial_period_start' => :'initialPeriodStart',
        :'successful_periods' => :'successfulPeriods',
        :'total_periods' => :'totalPeriods',
        :'trial_end' => :'trialEnd',
        :'dunning' => :'dunning',
        :'locked' => :'locked',
        :'managed_by' => :'managedBy',
        :'version_start' => :'versionStart',
        :'version_end' => :'versionEnd',
        :'version_number' => :'versionNumber',
        :'credit_enabled' => :'creditEnabled',
        :'aggregate_all_subscriptions_on_account' => :'aggregateAllSubscriptionsOnAccount',
        :'pricing_component_values' => :'pricingComponentValues',
        :'payment_method_subscription_links' => :'paymentMethodSubscriptionLinks',
        :'fixed_terms' => :'fixedTerms',
        :'current_time' => :'currentTime',
        :'time_offset' => :'timeOffset',
        :'payment_terms' => :'paymentTerms',
        :'failed_payment_behaviour' => :'failedPaymentBehaviour'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'created' => :'DateTime',
        :'changed_by' => :'String',
        :'updated' => :'DateTime',
        :'metadata' => :'DynamicMetadata',
        :'id' => :'String',
        :'version_id' => :'String',
        :'crm_id' => :'String',
        :'account_id' => :'String',
        :'organization_id' => :'String',
        :'product_id' => :'String',
        :'product_rate_plan_id' => :'String',
        :'parent_id' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'type' => :'String',
        :'state' => :'String',
        :'current_period_start' => :'DateTime',
        :'current_period_end' => :'DateTime',
        :'contract_start' => :'DateTime',
        :'subscription_end' => :'DateTime',
        :'current_period_end_explicit' => :'DateTime',
        :'initial_period_start' => :'DateTime',
        :'successful_periods' => :'Integer',
        :'total_periods' => :'Integer',
        :'trial_end' => :'DateTime',
        :'dunning' => :'BOOLEAN',
        :'locked' => :'String',
        :'managed_by' => :'String',
        :'version_start' => :'DateTime',
        :'version_end' => :'DateTime',
        :'version_number' => :'Integer',
        :'credit_enabled' => :'BOOLEAN',
        :'aggregate_all_subscriptions_on_account' => :'BOOLEAN',
        :'pricing_component_values' => :'Array<PricingComponentValue>',
        :'payment_method_subscription_links' => :'Array<PaymentMethodSubscriptionLink>',
        :'fixed_terms' => :'Array<FixedTerm>',
        :'current_time' => :'DateTime',
        :'time_offset' => :'Integer',
        :'payment_terms' => :'Integer',
        :'failed_payment_behaviour' => :'String'
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

      if attributes.has_key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'versionID')
        self.version_id = attributes[:'versionID']
      end

      if attributes.has_key?(:'crmID')
        self.crm_id = attributes[:'crmID']
      end

      if attributes.has_key?(:'accountID')
        self.account_id = attributes[:'accountID']
      end

      if attributes.has_key?(:'organizationID')
        self.organization_id = attributes[:'organizationID']
      end

      if attributes.has_key?(:'productID')
        self.product_id = attributes[:'productID']
      end

      if attributes.has_key?(:'productRatePlanID')
        self.product_rate_plan_id = attributes[:'productRatePlanID']
      end

      if attributes.has_key?(:'parentID')
        self.parent_id = attributes[:'parentID']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'currentPeriodStart')
        self.current_period_start = attributes[:'currentPeriodStart']
      end

      if attributes.has_key?(:'currentPeriodEnd')
        self.current_period_end = attributes[:'currentPeriodEnd']
      end

      if attributes.has_key?(:'contractStart')
        self.contract_start = attributes[:'contractStart']
      end

      if attributes.has_key?(:'subscriptionEnd')
        self.subscription_end = attributes[:'subscriptionEnd']
      end

      if attributes.has_key?(:'currentPeriodEndExplicit')
        self.current_period_end_explicit = attributes[:'currentPeriodEndExplicit']
      end

      if attributes.has_key?(:'initialPeriodStart')
        self.initial_period_start = attributes[:'initialPeriodStart']
      end

      if attributes.has_key?(:'successfulPeriods')
        self.successful_periods = attributes[:'successfulPeriods']
      end

      if attributes.has_key?(:'totalPeriods')
        self.total_periods = attributes[:'totalPeriods']
      end

      if attributes.has_key?(:'trialEnd')
        self.trial_end = attributes[:'trialEnd']
      end

      if attributes.has_key?(:'dunning')
        self.dunning = attributes[:'dunning']
      else
        self.dunning = false
      end

      if attributes.has_key?(:'locked')
        self.locked = attributes[:'locked']
      end

      if attributes.has_key?(:'managedBy')
        self.managed_by = attributes[:'managedBy']
      end

      if attributes.has_key?(:'versionStart')
        self.version_start = attributes[:'versionStart']
      end

      if attributes.has_key?(:'versionEnd')
        self.version_end = attributes[:'versionEnd']
      end

      if attributes.has_key?(:'versionNumber')
        self.version_number = attributes[:'versionNumber']
      end

      if attributes.has_key?(:'creditEnabled')
        self.credit_enabled = attributes[:'creditEnabled']
      else
        self.credit_enabled = false
      end

      if attributes.has_key?(:'aggregateAllSubscriptionsOnAccount')
        self.aggregate_all_subscriptions_on_account = attributes[:'aggregateAllSubscriptionsOnAccount']
      else
        self.aggregate_all_subscriptions_on_account = false
      end

      if attributes.has_key?(:'pricingComponentValues')
        if (value = attributes[:'pricingComponentValues']).is_a?(Array)
          self.pricing_component_values = value
        end
      end

      if attributes.has_key?(:'paymentMethodSubscriptionLinks')
        if (value = attributes[:'paymentMethodSubscriptionLinks']).is_a?(Array)
          self.payment_method_subscription_links = value
        end
      end

      if attributes.has_key?(:'fixedTerms')
        if (value = attributes[:'fixedTerms']).is_a?(Array)
          self.fixed_terms = value
        end
      end

      if attributes.has_key?(:'currentTime')
        self.current_time = attributes[:'currentTime']
      end

      if attributes.has_key?(:'timeOffset')
        self.time_offset = attributes[:'timeOffset']
      end

      if attributes.has_key?(:'paymentTerms')
        self.payment_terms = attributes[:'paymentTerms']
      end

      if attributes.has_key?(:'failedPaymentBehaviour')
        self.failed_payment_behaviour = attributes[:'failedPaymentBehaviour']
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
      return false if @id.nil?
      return false if @account_id.nil?
      return false if @organization_id.nil?
      return false if @product_id.nil?
      return false if @product_rate_plan_id.nil?
      return false if @name.nil?
      type_validator = EnumAttributeValidator.new('String', ["Subscription", "FixedTerm", "Trial"])
      return false unless type_validator.valid?(@type)
      return false if @state.nil?
      state_validator = EnumAttributeValidator.new('String', ["Trial", "Provisioned", "Paid", "AwaitingPayment", "Cancelled", "Failed", "Expired"])
      return false unless state_validator.valid?(@state)
      return false if @initial_period_start.nil?
      return false if @trial_end.nil?
      managed_by_validator = EnumAttributeValidator.new('String', ["BillForward", "Stripe"])
      return false unless managed_by_validator.valid?(@managed_by)
      return false if @version_start.nil?
      return false if @version_number.nil?
      return false if @current_time.nil?
      failed_payment_behaviour_validator = EnumAttributeValidator.new('String', ["CancelSubscription", "None"])
      return false unless failed_payment_behaviour_validator.valid?(@failed_payment_behaviour)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["Subscription", "FixedTerm", "Trial"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ["Trial", "Provisioned", "Paid", "AwaitingPayment", "Cancelled", "Failed", "Expired"])
      unless validator.valid?(state)
        fail ArgumentError, "invalid value for 'state', must be one of #{validator.allowable_values}."
      end
      @state = state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] managed_by Object to be assigned
    def managed_by=(managed_by)
      validator = EnumAttributeValidator.new('String', ["BillForward", "Stripe"])
      unless validator.valid?(managed_by)
        fail ArgumentError, "invalid value for 'managed_by', must be one of #{validator.allowable_values}."
      end
      @managed_by = managed_by
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] failed_payment_behaviour Object to be assigned
    def failed_payment_behaviour=(failed_payment_behaviour)
      validator = EnumAttributeValidator.new('String', ["CancelSubscription", "None"])
      unless validator.valid?(failed_payment_behaviour)
        fail ArgumentError, "invalid value for 'failed_payment_behaviour', must be one of #{validator.allowable_values}."
      end
      @failed_payment_behaviour = failed_payment_behaviour
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created == o.created &&
          changed_by == o.changed_by &&
          updated == o.updated &&
          metadata == o.metadata &&
          id == o.id &&
          version_id == o.version_id &&
          crm_id == o.crm_id &&
          account_id == o.account_id &&
          organization_id == o.organization_id &&
          product_id == o.product_id &&
          product_rate_plan_id == o.product_rate_plan_id &&
          parent_id == o.parent_id &&
          name == o.name &&
          description == o.description &&
          type == o.type &&
          state == o.state &&
          current_period_start == o.current_period_start &&
          current_period_end == o.current_period_end &&
          contract_start == o.contract_start &&
          subscription_end == o.subscription_end &&
          current_period_end_explicit == o.current_period_end_explicit &&
          initial_period_start == o.initial_period_start &&
          successful_periods == o.successful_periods &&
          total_periods == o.total_periods &&
          trial_end == o.trial_end &&
          dunning == o.dunning &&
          locked == o.locked &&
          managed_by == o.managed_by &&
          version_start == o.version_start &&
          version_end == o.version_end &&
          version_number == o.version_number &&
          credit_enabled == o.credit_enabled &&
          aggregate_all_subscriptions_on_account == o.aggregate_all_subscriptions_on_account &&
          pricing_component_values == o.pricing_component_values &&
          payment_method_subscription_links == o.payment_method_subscription_links &&
          fixed_terms == o.fixed_terms &&
          current_time == o.current_time &&
          time_offset == o.time_offset &&
          payment_terms == o.payment_terms &&
          failed_payment_behaviour == o.failed_payment_behaviour
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [created, changed_by, updated, metadata, id, version_id, crm_id, account_id, organization_id, product_id, product_rate_plan_id, parent_id, name, description, type, state, current_period_start, current_period_end, contract_start, subscription_end, current_period_end_explicit, initial_period_start, successful_periods, total_periods, trial_end, dunning, locked, managed_by, version_start, version_end, version_number, credit_enabled, aggregate_all_subscriptions_on_account, pricing_component_values, payment_method_subscription_links, fixed_terms, current_time, time_offset, payment_terms, failed_payment_behaviour].hash
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
