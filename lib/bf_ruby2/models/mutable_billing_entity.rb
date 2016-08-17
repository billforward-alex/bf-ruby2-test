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
  # Mutable entities are those entities that can be updated after their initial creation.
  class MutableBillingEntity
    # { \"description\" : \"The UTC DateTime when the object was created.\", \"verbs\":[] }
    attr_accessor :created

    # { \"description\" : \"ID of the user who last updated the entity.\", \"verbs\":[] }
    attr_accessor :changed_by

    # { \"description\" : \"The UTC DateTime when the object was last updated.\", \"verbs\":[] }
    attr_accessor :updated

    # ID of the Synchronization Job.
    attr_accessor :id

    # This is config id which links to this sync job.
    attr_accessor :config_id

    # Organization associated with the refund.
    attr_accessor :organization_id

    # This is the state of job. Pending jobs have not run. Complete jobs have run without error. Failed jobs have one of more errors. Cancelled jobs did not run.
    attr_accessor :state

    # This is the type of job. Incremental jobs just sync changes, fully jobs sync all data.
    attr_accessor :type

    # The scope of the data synch'd.
    attr_accessor :scope

    # This is the target of the job.
    attr_accessor :target

    # Name of the Job.
    attr_accessor :name

    # Description of the Job.
    attr_accessor :description

    # UTC DateTime of the start of the data to sync.
    attr_accessor :data_from

    # UTC DateTime of the start of the data to sync.
    attr_accessor :data_till

    # UTC DateTime of the end of the data to sync.
    attr_accessor :started

    # UTC DateTime of the start of the data to sync.
    attr_accessor :stopped

    # The account who created the synch job.
    attr_accessor :created_by

    # The max number of times the records will try to resync.
    attr_accessor :max_retry_times

    # The number of times the records tried to resync.
    attr_accessor :retry_attempted

    # Is the sync job deleted.
    attr_accessor :deleted

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
        :'config_id' => :'configID',
        :'organization_id' => :'organizationID',
        :'state' => :'state',
        :'type' => :'type',
        :'scope' => :'scope',
        :'target' => :'target',
        :'name' => :'name',
        :'description' => :'description',
        :'data_from' => :'dataFrom',
        :'data_till' => :'dataTill',
        :'started' => :'started',
        :'stopped' => :'stopped',
        :'created_by' => :'createdBy',
        :'max_retry_times' => :'maxRetryTimes',
        :'retry_attempted' => :'retryAttempted',
        :'deleted' => :'deleted'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'created' => :'DateTime',
        :'changed_by' => :'String',
        :'updated' => :'DateTime',
        :'id' => :'String',
        :'config_id' => :'String',
        :'organization_id' => :'String',
        :'state' => :'String',
        :'type' => :'String',
        :'scope' => :'String',
        :'target' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'data_from' => :'DateTime',
        :'data_till' => :'DateTime',
        :'started' => :'DateTime',
        :'stopped' => :'DateTime',
        :'created_by' => :'String',
        :'max_retry_times' => :'Integer',
        :'retry_attempted' => :'Integer',
        :'deleted' => :'BOOLEAN'
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

      if attributes.has_key?(:'configID')
        self.config_id = attributes[:'configID']
      end

      if attributes.has_key?(:'organizationID')
        self.organization_id = attributes[:'organizationID']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'scope')
        self.scope = attributes[:'scope']
      end

      if attributes.has_key?(:'target')
        self.target = attributes[:'target']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'dataFrom')
        self.data_from = attributes[:'dataFrom']
      end

      if attributes.has_key?(:'dataTill')
        self.data_till = attributes[:'dataTill']
      end

      if attributes.has_key?(:'started')
        self.started = attributes[:'started']
      end

      if attributes.has_key?(:'stopped')
        self.stopped = attributes[:'stopped']
      end

      if attributes.has_key?(:'createdBy')
        self.created_by = attributes[:'createdBy']
      end

      if attributes.has_key?(:'maxRetryTimes')
        self.max_retry_times = attributes[:'maxRetryTimes']
      end

      if attributes.has_key?(:'retryAttempted')
        self.retry_attempted = attributes[:'retryAttempted']
      end

      if attributes.has_key?(:'deleted')
        self.deleted = attributes[:'deleted']
      else
        self.deleted = false
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
      return false if @config_id.nil?
      return false if @organization_id.nil?
      return false if @state.nil?
      state_validator = EnumAttributeValidator.new('String', ["Pending", "Complete", "Failed", "Cancelled", "Processing"])
      return false unless state_validator.valid?(@state)
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["Incremental", "Full"])
      return false unless type_validator.valid?(@type)
      return false if @scope.nil?
      scope_validator = EnumAttributeValidator.new('String', ["Manual", "Scheduled"])
      return false unless scope_validator.valid?(@scope)
      return false if @target.nil?
      target_validator = EnumAttributeValidator.new('String', ["Salesforce"])
      return false unless target_validator.valid?(@target)
      return false if @name.nil?
      return false if @description.nil?
      return false if @max_retry_times.nil?
      return false if @retry_attempted.nil?
      return false if @deleted.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ["Pending", "Complete", "Failed", "Cancelled", "Processing"])
      unless validator.valid?(state)
        fail ArgumentError, "invalid value for 'state', must be one of #{validator.allowable_values}."
      end
      @state = state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["Incremental", "Full"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] scope Object to be assigned
    def scope=(scope)
      validator = EnumAttributeValidator.new('String', ["Manual", "Scheduled"])
      unless validator.valid?(scope)
        fail ArgumentError, "invalid value for 'scope', must be one of #{validator.allowable_values}."
      end
      @scope = scope
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] target Object to be assigned
    def target=(target)
      validator = EnumAttributeValidator.new('String', ["Salesforce"])
      unless validator.valid?(target)
        fail ArgumentError, "invalid value for 'target', must be one of #{validator.allowable_values}."
      end
      @target = target
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
          config_id == o.config_id &&
          organization_id == o.organization_id &&
          state == o.state &&
          type == o.type &&
          scope == o.scope &&
          target == o.target &&
          name == o.name &&
          description == o.description &&
          data_from == o.data_from &&
          data_till == o.data_till &&
          started == o.started &&
          stopped == o.stopped &&
          created_by == o.created_by &&
          max_retry_times == o.max_retry_times &&
          retry_attempted == o.retry_attempted &&
          deleted == o.deleted
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [created, changed_by, updated, id, config_id, organization_id, state, type, scope, target, name, description, data_from, data_till, started, stopped, created_by, max_retry_times, retry_attempted, deleted].hash
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
