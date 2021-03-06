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
  # An instance of usage
  class Usage
    # { \"description\" : \"The UTC DateTime when the object was created.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :created

    # { \"description\" : \"A (not guaranteed unique) identifier for the session from which this usage was generated.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :session_id

    # { \"description\" : \"ID of the subscription to which this usage instance pertains.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :subscription_id

    # { \"description\" : \"The ID of the pricing component this usage is for.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :pricing_component_id

    # { \"description\" : \"The name of the pricing component this usage is for.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :pricing_component_name

    # { \"description\" : \"The unit-of-measure that this usage is for.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :uom

    # { \"description\" : \"The organization associated with this usage instance.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :organization_id

    # { \"description\" : \"The usage period during which this usage occurred.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :usage_period

    # { \"description\" : \"The amount of time over which usage occurred (in milliseconds?). Relevant for 'temporal' usage only.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :usage_duration

    # { \"description\" : \"The type of usage ('Temporal' or 'Itemized').\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :usage_type

    # { \"description\" : \"The quantity of product consumed by this usage. Relevant for 'itemized' usage only.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :usage_value

    # { \"description\" : \"Is this usage a detailed entry?\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :detailed

    # { \"description\" : \"Some identifying information about who created this object.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :created_by

    # { \"description\" : \"Some identifying information about who updated this object.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :updated_by

    # { \"description\" : \"The start date of this usage instance, UTC DateTime\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :start

    # { \"description\" : \"The end date of this usage instance, UTC DateTime\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :stop

    # { \"description\" : \"The UTC DateTime when the object was updated.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :updated

    # { \"description\" : \"The UTC DateTime when the usage occurred.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :occurred_on

    # { \"description\" : \"The UTC DateTime when the usage is to be billed.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :billing_date

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
        :'session_id' => :'sessionID',
        :'subscription_id' => :'subscriptionID',
        :'pricing_component_id' => :'pricingComponentID',
        :'pricing_component_name' => :'pricingComponentName',
        :'uom' => :'uom',
        :'organization_id' => :'organizationID',
        :'usage_period' => :'usagePeriod',
        :'usage_duration' => :'usageDuration',
        :'usage_type' => :'usageType',
        :'usage_value' => :'usageValue',
        :'detailed' => :'detailed',
        :'created_by' => :'createdBy',
        :'updated_by' => :'updatedBy',
        :'start' => :'start',
        :'stop' => :'stop',
        :'updated' => :'updated',
        :'occurred_on' => :'occurred_on',
        :'billing_date' => :'billing_date'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'created' => :'DateTime',
        :'session_id' => :'String',
        :'subscription_id' => :'String',
        :'pricing_component_id' => :'String',
        :'pricing_component_name' => :'String',
        :'uom' => :'String',
        :'organization_id' => :'String',
        :'usage_period' => :'Integer',
        :'usage_duration' => :'Integer',
        :'usage_type' => :'String',
        :'usage_value' => :'Integer',
        :'detailed' => :'BOOLEAN',
        :'created_by' => :'String',
        :'updated_by' => :'String',
        :'start' => :'DateTime',
        :'stop' => :'DateTime',
        :'updated' => :'DateTime',
        :'occurred_on' => :'DateTime',
        :'billing_date' => :'DateTime'
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

      if attributes.has_key?(:'sessionID')
        self.session_id = attributes[:'sessionID']
      end

      if attributes.has_key?(:'subscriptionID')
        self.subscription_id = attributes[:'subscriptionID']
      end

      if attributes.has_key?(:'pricingComponentID')
        self.pricing_component_id = attributes[:'pricingComponentID']
      end

      if attributes.has_key?(:'pricingComponentName')
        self.pricing_component_name = attributes[:'pricingComponentName']
      end

      if attributes.has_key?(:'uom')
        self.uom = attributes[:'uom']
      end

      if attributes.has_key?(:'organizationID')
        self.organization_id = attributes[:'organizationID']
      end

      if attributes.has_key?(:'usagePeriod')
        self.usage_period = attributes[:'usagePeriod']
      end

      if attributes.has_key?(:'usageDuration')
        self.usage_duration = attributes[:'usageDuration']
      end

      if attributes.has_key?(:'usageType')
        self.usage_type = attributes[:'usageType']
      end

      if attributes.has_key?(:'usageValue')
        self.usage_value = attributes[:'usageValue']
      end

      if attributes.has_key?(:'detailed')
        self.detailed = attributes[:'detailed']
      else
        self.detailed = false
      end

      if attributes.has_key?(:'createdBy')
        self.created_by = attributes[:'createdBy']
      end

      if attributes.has_key?(:'updatedBy')
        self.updated_by = attributes[:'updatedBy']
      end

      if attributes.has_key?(:'start')
        self.start = attributes[:'start']
      end

      if attributes.has_key?(:'stop')
        self.stop = attributes[:'stop']
      end

      if attributes.has_key?(:'updated')
        self.updated = attributes[:'updated']
      end

      if attributes.has_key?(:'occurred_on')
        self.occurred_on = attributes[:'occurred_on']
      end

      if attributes.has_key?(:'billing_date')
        self.billing_date = attributes[:'billing_date']
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
      return false if @session_id.nil?
      return false if @subscription_id.nil?
      return false if @pricing_component_id.nil?
      return false if @pricing_component_name.nil?
      return false if @uom.nil?
      return false if @organization_id.nil?
      return false if @usage_type.nil?
      usage_type_validator = EnumAttributeValidator.new('String', ["Temporal", "Itemized"])
      return false unless usage_type_validator.valid?(@usage_type)
      return false if @start.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] usage_type Object to be assigned
    def usage_type=(usage_type)
      validator = EnumAttributeValidator.new('String', ["Temporal", "Itemized"])
      unless validator.valid?(usage_type)
        fail ArgumentError, "invalid value for 'usage_type', must be one of #{validator.allowable_values}."
      end
      @usage_type = usage_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created == o.created &&
          session_id == o.session_id &&
          subscription_id == o.subscription_id &&
          pricing_component_id == o.pricing_component_id &&
          pricing_component_name == o.pricing_component_name &&
          uom == o.uom &&
          organization_id == o.organization_id &&
          usage_period == o.usage_period &&
          usage_duration == o.usage_duration &&
          usage_type == o.usage_type &&
          usage_value == o.usage_value &&
          detailed == o.detailed &&
          created_by == o.created_by &&
          updated_by == o.updated_by &&
          start == o.start &&
          stop == o.stop &&
          updated == o.updated &&
          occurred_on == o.occurred_on &&
          billing_date == o.billing_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [created, session_id, subscription_id, pricing_component_id, pricing_component_name, uom, organization_id, usage_period, usage_duration, usage_type, usage_value, detailed, created_by, updated_by, start, stop, updated, occurred_on, billing_date].hash
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
