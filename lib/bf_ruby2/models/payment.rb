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
  # Payment
  class Payment
    # { \"description\" : \"The UTC DateTime when the object was created.\", \"verbs\":[] }
    attr_accessor :created

    # { \"description\" : \"ID of the user who last updated the entity.\", \"verbs\":[] }
    attr_accessor :changed_by

    # { \"description\" : \"The UTC DateTime when the object was last updated.\", \"verbs\":[] }
    attr_accessor :updated

    # { \"description\" : \"ID of the payment.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :id

    # { \"description\" : \"CRM ID of the invoice.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :crm_id

    # { \"description\" : \"ID of the payment method associated with the payment.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :payment_method_id

    # { \"description\" : \"ID of the invoice associated with the payment. This may be null when a payment is not explicitly associated with an invoice. Payments may be used across multiple invoices.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :invoice_id

    # { \"description\" : \"ID of the organization associated with the payment.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :organization_id

    # { \"description\" : \"Payment gateway associated with the payment\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :gateway

    # { \"description\" : \"The currency of the payment specified by a three character ISO 4217 currency code.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :currency

    # { \"description\" : \"Nominal value of the payment. This is the theoretical value of the payment, thus the value this payment can pay off an invoice. For example a coupon has a nominal value of the discount, and the actual value is zero.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :nominal_value

    # { \"description\" : \"Actual monetary value of the payment. This is real value of the payment amount, thus the amount of currency received for this payment. A coupon has a real value of zero, even though the nominal amount it pays may be greater than zero.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :actual_value

    # { \"description\" : \"Remaining nominal value of the payment not used. In the case when a payment is used across a range of invoices a payment may be used multiple times, each use reducing the available blance of the payment.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :remaining_nominal_value

    # { \"description\" : \"UTC DateTime specifying when payment was received for the invoice.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :payment_received

    # { \"description\" : \"Refunded nominal value of the payment.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :refunded_value

    # { \"description\" : \"ID of the refund associated with the payment.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :refund_id

    # { \"description\" : \"Type of payment.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :type

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
        :'id' => :'id',
        :'crm_id' => :'crmID',
        :'payment_method_id' => :'paymentMethodID',
        :'invoice_id' => :'invoiceID',
        :'organization_id' => :'organizationID',
        :'gateway' => :'gateway',
        :'currency' => :'currency',
        :'nominal_value' => :'nominalValue',
        :'actual_value' => :'actualValue',
        :'remaining_nominal_value' => :'remainingNominalValue',
        :'payment_received' => :'paymentReceived',
        :'refunded_value' => :'refundedValue',
        :'refund_id' => :'refundID',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'created' => :'DateTime',
        :'changed_by' => :'String',
        :'updated' => :'DateTime',
        :'id' => :'String',
        :'crm_id' => :'String',
        :'payment_method_id' => :'String',
        :'invoice_id' => :'String',
        :'organization_id' => :'String',
        :'gateway' => :'String',
        :'currency' => :'String',
        :'nominal_value' => :'Float',
        :'actual_value' => :'Float',
        :'remaining_nominal_value' => :'Float',
        :'payment_received' => :'DateTime',
        :'refunded_value' => :'Float',
        :'refund_id' => :'String',
        :'type' => :'String'
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

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'crmID')
        self.crm_id = attributes[:'crmID']
      end

      if attributes.has_key?(:'paymentMethodID')
        self.payment_method_id = attributes[:'paymentMethodID']
      end

      if attributes.has_key?(:'invoiceID')
        self.invoice_id = attributes[:'invoiceID']
      end

      if attributes.has_key?(:'organizationID')
        self.organization_id = attributes[:'organizationID']
      end

      if attributes.has_key?(:'gateway')
        self.gateway = attributes[:'gateway']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'nominalValue')
        self.nominal_value = attributes[:'nominalValue']
      end

      if attributes.has_key?(:'actualValue')
        self.actual_value = attributes[:'actualValue']
      end

      if attributes.has_key?(:'remainingNominalValue')
        self.remaining_nominal_value = attributes[:'remainingNominalValue']
      end

      if attributes.has_key?(:'paymentReceived')
        self.payment_received = attributes[:'paymentReceived']
      end

      if attributes.has_key?(:'refundedValue')
        self.refunded_value = attributes[:'refundedValue']
      end

      if attributes.has_key?(:'refundID')
        self.refund_id = attributes[:'refundID']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
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
      return false if @crm_id.nil?
      return false if @payment_method_id.nil?
      return false if @invoice_id.nil?
      return false if @organization_id.nil?
      return false if @gateway.nil?
      gateway_validator = EnumAttributeValidator.new('String', ["cybersource_token", "card_vault", "paypal_simple", "locustworld", "free", "coupon", "credit_note", "stripe", "braintree", "balanced", "paypal", "billforward_test", "offline", "trial", "stripeACH", "authorizeNet", "spreedly", "sagePay", "trustCommerce", "payvision", "kash"])
      return false unless gateway_validator.valid?(@gateway)
      return false if @currency.nil?
      return false if @nominal_value.nil?
      return false if @actual_value.nil?
      return false if @remaining_nominal_value.nil?
      return false if @refunded_value.nil?
      return false if @refund_id.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["credit", "debit"])
      return false unless type_validator.valid?(@type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] gateway Object to be assigned
    def gateway=(gateway)
      validator = EnumAttributeValidator.new('String', ["cybersource_token", "card_vault", "paypal_simple", "locustworld", "free", "coupon", "credit_note", "stripe", "braintree", "balanced", "paypal", "billforward_test", "offline", "trial", "stripeACH", "authorizeNet", "spreedly", "sagePay", "trustCommerce", "payvision", "kash"])
      unless validator.valid?(gateway)
        fail ArgumentError, "invalid value for 'gateway', must be one of #{validator.allowable_values}."
      end
      @gateway = gateway
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["credit", "debit"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created == o.created &&
          changed_by == o.changed_by &&
          updated == o.updated &&
          id == o.id &&
          crm_id == o.crm_id &&
          payment_method_id == o.payment_method_id &&
          invoice_id == o.invoice_id &&
          organization_id == o.organization_id &&
          gateway == o.gateway &&
          currency == o.currency &&
          nominal_value == o.nominal_value &&
          actual_value == o.actual_value &&
          remaining_nominal_value == o.remaining_nominal_value &&
          payment_received == o.payment_received &&
          refunded_value == o.refunded_value &&
          refund_id == o.refund_id &&
          type == o.type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [created, changed_by, updated, id, crm_id, payment_method_id, invoice_id, organization_id, gateway, currency, nominal_value, actual_value, remaining_nominal_value, payment_received, refunded_value, refund_id, type].hash
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
