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
  # A coupon-definition.
  class CouponDefinition
    # { \"description\" : \"The UTC DateTime when the object was created.\", \"verbs\":[] }
    attr_accessor :created

    # { \"description\" : \"ID of the user who last updated the entity.\", \"verbs\":[] }
    attr_accessor :changed_by

    # { \"description\" : \"The UTC DateTime when the object was last updated.\", \"verbs\":[] }
    attr_accessor :updated

    # { \"description\" : \"ID of the coupon-definition.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :id

    # { \"description\" : \"CRM ID of the product-rate-plan.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :crm_id

    # { \"description\" : \"ID of the organization associated with the coupon-definition.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :organization_id

    # { \"description\" : \"The human readable name of the coupon-definition.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :name

    # { \"description\" : \"The human readable description of the coupon-definition.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :description

    # { \"description\" : \"The customerCode associated with the organization.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :customer_code

    # { \"description\" : \"The target of the coupon-definition. Currently coupon-definitions can only target products.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :target

    # { \"description\" : \"The currency of the coupon-definition specified by a three character ISO 4217 currency code.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :currency

    # { \"description\" : \"The UTC DateTime that the coupon-definition is valid from.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :definition_valid_from

    # { \"description\" : \"The UTC DateTime that the coupon-definition is valid until.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :definition_valid_till

    # { \"description\" : \"instanceDurationPeriod\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :instance_duration_period

    # { \"description\" : \"instanceDuration\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :instance_duration

    # { \"description\" : \"The UTC DateTime specifying the fixed end date of the coupon-definition.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :fixed_end_date

    # { \"description\" : \"The current state of the coupon-definition.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :state

    # { \"description\" : \"The collection of coupon-modifiers associated with the coupon-definition.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :modifiers

    # { \"description\" : \"The collection of coupon-rules associated with the coupon-definition.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :rules

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
        :'organization_id' => :'organizationID',
        :'name' => :'name',
        :'description' => :'description',
        :'customer_code' => :'customerCode',
        :'target' => :'target',
        :'currency' => :'currency',
        :'definition_valid_from' => :'definitionValidFrom',
        :'definition_valid_till' => :'definitionValidTill',
        :'instance_duration_period' => :'instanceDurationPeriod',
        :'instance_duration' => :'instanceDuration',
        :'fixed_end_date' => :'fixedEndDate',
        :'state' => :'state',
        :'modifiers' => :'modifiers',
        :'rules' => :'rules'
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
        :'organization_id' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'customer_code' => :'String',
        :'target' => :'String',
        :'currency' => :'String',
        :'definition_valid_from' => :'DateTime',
        :'definition_valid_till' => :'DateTime',
        :'instance_duration_period' => :'String',
        :'instance_duration' => :'Integer',
        :'fixed_end_date' => :'DateTime',
        :'state' => :'String',
        :'modifiers' => :'Array<CouponModifierBase>',
        :'rules' => :'Array<CouponRule>'
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

      if attributes.has_key?(:'organizationID')
        self.organization_id = attributes[:'organizationID']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'customerCode')
        self.customer_code = attributes[:'customerCode']
      end

      if attributes.has_key?(:'target')
        self.target = attributes[:'target']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'definitionValidFrom')
        self.definition_valid_from = attributes[:'definitionValidFrom']
      end

      if attributes.has_key?(:'definitionValidTill')
        self.definition_valid_till = attributes[:'definitionValidTill']
      end

      if attributes.has_key?(:'instanceDurationPeriod')
        self.instance_duration_period = attributes[:'instanceDurationPeriod']
      end

      if attributes.has_key?(:'instanceDuration')
        self.instance_duration = attributes[:'instanceDuration']
      end

      if attributes.has_key?(:'fixedEndDate')
        self.fixed_end_date = attributes[:'fixedEndDate']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'modifiers')
        if (value = attributes[:'modifiers']).is_a?(Array)
          self.modifiers = value
        end
      end

      if attributes.has_key?(:'rules')
        if (value = attributes[:'rules']).is_a?(Array)
          self.rules = value
        end
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
      return false if @organization_id.nil?
      return false if @name.nil?
      return false if @description.nil?
      return false if @customer_code.nil?
      return false if @target.nil?
      target_validator = EnumAttributeValidator.new('String', ["product", "account"])
      return false unless target_validator.valid?(@target)
      return false if @currency.nil?
      return false if @definition_valid_from.nil?
      return false if @instance_duration_period.nil?
      instance_duration_period_validator = EnumAttributeValidator.new('String', ["minutes", "hours", "days", "months", "years", "periods"])
      return false unless instance_duration_period_validator.valid?(@instance_duration_period)
      return false if @instance_duration.nil?
      return false if @state.nil?
      state_validator = EnumAttributeValidator.new('String', ["development", "production", "deleted"])
      return false unless state_validator.valid?(@state)
      return false if @modifiers.nil?
      return false if @rules.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] target Object to be assigned
    def target=(target)
      validator = EnumAttributeValidator.new('String', ["product", "account"])
      unless validator.valid?(target)
        fail ArgumentError, "invalid value for 'target', must be one of #{validator.allowable_values}."
      end
      @target = target
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] instance_duration_period Object to be assigned
    def instance_duration_period=(instance_duration_period)
      validator = EnumAttributeValidator.new('String', ["minutes", "hours", "days", "months", "years", "periods"])
      unless validator.valid?(instance_duration_period)
        fail ArgumentError, "invalid value for 'instance_duration_period', must be one of #{validator.allowable_values}."
      end
      @instance_duration_period = instance_duration_period
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ["development", "production", "deleted"])
      unless validator.valid?(state)
        fail ArgumentError, "invalid value for 'state', must be one of #{validator.allowable_values}."
      end
      @state = state
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
          organization_id == o.organization_id &&
          name == o.name &&
          description == o.description &&
          customer_code == o.customer_code &&
          target == o.target &&
          currency == o.currency &&
          definition_valid_from == o.definition_valid_from &&
          definition_valid_till == o.definition_valid_till &&
          instance_duration_period == o.instance_duration_period &&
          instance_duration == o.instance_duration &&
          fixed_end_date == o.fixed_end_date &&
          state == o.state &&
          modifiers == o.modifiers &&
          rules == o.rules
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [created, changed_by, updated, id, crm_id, organization_id, name, description, customer_code, target, currency, definition_valid_from, definition_valid_till, instance_duration_period, instance_duration, fixed_end_date, state, modifiers, rules].hash
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
