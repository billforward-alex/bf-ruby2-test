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
  # Entity for requesting that a subscription be created.
  class CreateSubscriptionRequest
    # {\"description\":\"ID of the BillForward Account who will own this subscription. You should ensure beforehand that the customer has had a BillForward Account created for them.\",\"verbs\":[\"POST\"]}
    attr_accessor :account_id

    # {\"description\":\"Name or ID of the product.\",\"verbs\":[\"POST\"]}
    attr_accessor :product

    # {\"description\":\"ID or name of the rate plan to which the subscription will be subscribing. Lookup by name is only possible if a `productID` is specified.\",\"verbs\":[\"POST\"]}
    attr_accessor :product_rate_plan

    # {\"default\":\"(Auto-populated using your authentication credentials)\",\"description\":\"ID of the BillForward Organization within which the requested Subscription should be created. If omitted, this will be auto-populated using your authentication credentials.\",\"verbs\":[\"POST\"]}
    attr_accessor :organization_id

    # {\"default\":\"(Subscription will be named after the rate plan to which the subscription subscribes)\",\"description\":\"Name of the created subscription. This is primarily for your benefit &mdash; for example, to enable you to identify subscriptions at a glance in the BillForward web interface (e.g. 'Customer 1425, guy@mail.com, Premium membership').\",\"verbs\":[\"POST\"]}
    attr_accessor :name

    # {\"default\":\"(null)\",\"description\":\"Description of the created subscription. This is primarily for your benefit &mdash; for example, you could write here the mechanism through which you obtained this customer. (e.g. 'Customer obtained through Lazy Wednesdays promotion').\",\"verbs\":[\"POST\"]}
    attr_accessor :description

    # {\"default\":\"(ServerNow upon receiving request)\",\"description\":\"ISO 8601 UTC DateTime (e.g. 2015-06-16T11:58:41Z) describing the date at which the subscription should enter its first service period.\",\"verbs\":[\"POST\"]}
    attr_accessor :start

    # {\"default\":\"(1 period ahead of the `start` time)\",\"description\":\"ISO 8601 UTC DateTime (e.g. 2015-06-16T11:58:41Z) describing the date at which the subscription should finish its first service period.\",\"verbs\":[\"POST\"]}
    attr_accessor :_end

    # {\"default\":\"Provisioned\",\"description\":\"The state in which the created subscription will begin.<br><span class=\\\"label label-default\\\">Provisioned</span> &mdash; The subscription will wait (without raising any invoices or beginning its service) until explicit action is taken to change its state.<br><span class=\\\"label label-default\\\">AwaitingPayment</span> &mdash; The subscription is activated. After `start` time is surpassed, it will begin service and raise its first invoice.\",\"verbs\":[\"POST\"]}
    attr_accessor :state

    # {\"default\":\"(null)\",\"description\":\"ISO 8601 UTC DateTime (e.g. 2015-06-16T11:58:41Z) describing the date at which the subscription should leave the trial period.\",\"verbs\":[\"POST\"]}
    attr_accessor :trial_end

    attr_accessor :type

    # {\"default\":\"(If a subscription exists which 'aggregates all subscriptions belonging to this BillForward Account', refer to the ID of that subscription. Otherwise: null)\",\"description\":\"ID of a parent subscription which will collect the charges raised by this subscription. The parent becomes responsible for paying those charges. If a subscription exists which 'aggregates all subscriptions belonging to this BillForward Account', then that parent will override any parent specified here.\",\"verbs\":[\"POST\"]}
    attr_accessor :parent_id

    # {\"default\":false,\"description\":\"Whether this subscription should become an 'aggregating subscription', collecting charges (starting now) from all other subscriptions (current and future) belonging to this BillForward Account.\",\"verbs\":[\"POST\"]}
    attr_accessor :aggregate_all_subscriptions_on_account

    # {\"default\":true,\"description\":\"Whether to override the `end` date to line up with the current period end of the 'aggregating subscription' to which this subscription belongs.\",\"verbs\":[\"POST\"]}
    attr_accessor :align_period_with_aggregating_subscription

    # {\"default\":\"(empty list)\",\"description\":\"Quantities that this subscription possesses (upon beginning service), of pricing components upon the subscription's rate plan. For example: you can set the subscription to begin its service with '5 widgets' consumed. Otherwise the 'default quantity' will be observed instead, for each pricing component upon the rate plan.\",\"verbs\":[\"POST\"]}
    attr_accessor :pricing_component_quantities

    # { \"description\" : \"Add metadata.\", \"verbs\":[\"POST\"] }
    attr_accessor :metadata

    attr_accessor :payment_terms

    # {\"description\":\"start of the contracted period.  This will be after a trial, if one exists\",\"verbs\":[\"GET\"]}
    attr_accessor :contract_start

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
        :'account_id' => :'accountID',
        :'product' => :'product',
        :'product_rate_plan' => :'productRatePlan',
        :'organization_id' => :'organizationID',
        :'name' => :'name',
        :'description' => :'description',
        :'start' => :'start',
        :'_end' => :'end',
        :'state' => :'state',
        :'trial_end' => :'trialEnd',
        :'type' => :'type',
        :'parent_id' => :'parentID',
        :'aggregate_all_subscriptions_on_account' => :'aggregateAllSubscriptionsOnAccount',
        :'align_period_with_aggregating_subscription' => :'alignPeriodWithAggregatingSubscription',
        :'pricing_component_quantities' => :'pricingComponentQuantities',
        :'metadata' => :'metadata',
        :'payment_terms' => :'paymentTerms',
        :'contract_start' => :'contractStart',
        :'failed_payment_behaviour' => :'failedPaymentBehaviour'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'account_id' => :'String',
        :'product' => :'String',
        :'product_rate_plan' => :'String',
        :'organization_id' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'start' => :'DateTime',
        :'_end' => :'DateTime',
        :'state' => :'String',
        :'trial_end' => :'DateTime',
        :'type' => :'String',
        :'parent_id' => :'String',
        :'aggregate_all_subscriptions_on_account' => :'BOOLEAN',
        :'align_period_with_aggregating_subscription' => :'BOOLEAN',
        :'pricing_component_quantities' => :'Array<PricingComponentQuantityRequest>',
        :'metadata' => :'DynamicMetadata',
        :'payment_terms' => :'Integer',
        :'contract_start' => :'DateTime',
        :'failed_payment_behaviour' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'accountID')
        self.account_id = attributes[:'accountID']
      end

      if attributes.has_key?(:'product')
        self.product = attributes[:'product']
      end

      if attributes.has_key?(:'productRatePlan')
        self.product_rate_plan = attributes[:'productRatePlan']
      end

      if attributes.has_key?(:'organizationID')
        self.organization_id = attributes[:'organizationID']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'start')
        self.start = attributes[:'start']
      end

      if attributes.has_key?(:'end')
        self._end = attributes[:'end']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'trialEnd')
        self.trial_end = attributes[:'trialEnd']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'parentID')
        self.parent_id = attributes[:'parentID']
      end

      if attributes.has_key?(:'aggregateAllSubscriptionsOnAccount')
        self.aggregate_all_subscriptions_on_account = attributes[:'aggregateAllSubscriptionsOnAccount']
      else
        self.aggregate_all_subscriptions_on_account = false
      end

      if attributes.has_key?(:'alignPeriodWithAggregatingSubscription')
        self.align_period_with_aggregating_subscription = attributes[:'alignPeriodWithAggregatingSubscription']
      else
        self.align_period_with_aggregating_subscription = false
      end

      if attributes.has_key?(:'pricingComponentQuantities')
        if (value = attributes[:'pricingComponentQuantities']).is_a?(Array)
          self.pricing_component_quantities = value
        end
      end

      if attributes.has_key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.has_key?(:'paymentTerms')
        self.payment_terms = attributes[:'paymentTerms']
      end

      if attributes.has_key?(:'contractStart')
        self.contract_start = attributes[:'contractStart']
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
      return false if @account_id.nil?
      return false if @product.nil?
      return false if @product_rate_plan.nil?
      state_validator = EnumAttributeValidator.new('String', ["Trial", "Provisioned", "Paid", "AwaitingPayment", "Cancelled", "Failed", "Expired"])
      return false unless state_validator.valid?(@state)
      type_validator = EnumAttributeValidator.new('String', ["Subscription", "FixedTerm", "Trial"])
      return false unless type_validator.valid?(@type)
      failed_payment_behaviour_validator = EnumAttributeValidator.new('String', ["CancelSubscription", "None"])
      return false unless failed_payment_behaviour_validator.valid?(@failed_payment_behaviour)
      return true
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
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["Subscription", "FixedTerm", "Trial"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
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
          account_id == o.account_id &&
          product == o.product &&
          product_rate_plan == o.product_rate_plan &&
          organization_id == o.organization_id &&
          name == o.name &&
          description == o.description &&
          start == o.start &&
          _end == o._end &&
          state == o.state &&
          trial_end == o.trial_end &&
          type == o.type &&
          parent_id == o.parent_id &&
          aggregate_all_subscriptions_on_account == o.aggregate_all_subscriptions_on_account &&
          align_period_with_aggregating_subscription == o.align_period_with_aggregating_subscription &&
          pricing_component_quantities == o.pricing_component_quantities &&
          metadata == o.metadata &&
          payment_terms == o.payment_terms &&
          contract_start == o.contract_start &&
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
      [account_id, product, product_rate_plan, organization_id, name, description, start, _end, state, trial_end, type, parent_id, aggregate_all_subscriptions_on_account, align_period_with_aggregating_subscription, pricing_component_quantities, metadata, payment_terms, contract_start, failed_payment_behaviour].hash
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
