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
  # Profile
  class Profile
    # { \"description\" : \"The UTC DateTime when the object was created.\", \"verbs\":[] }
    attr_accessor :created

    # { \"description\" : \"ID of the user who last updated the entity.\", \"verbs\":[] }
    attr_accessor :changed_by

    # { \"description\" : \"The UTC DateTime when the object was last updated.\", \"verbs\":[] }
    attr_accessor :updated

    # { \"description\" : \"ID of the profile.\", \"verbs\":[\"PUT\",\"GET\"] }
    attr_accessor :id

    # { \"description\" : \"\", \"verbs\":[\"GET\"] }
    attr_accessor :account_id

    # { \"description\" : \"\", \"verbs\":[] }
    attr_accessor :organization_id

    # { \"description\" : \"E-mail address\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :email

    # { \"description\" : \"\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :first_name

    # { \"description\" : \"\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :last_name

    # { \"description\" : \"\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :company_name

    # { \"description\" : \"\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :logo_url

    # { \"description\" : \"Address associated with the profile\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :addresses

    # { \"description\" : \"Mobile telephone number\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :mobile

    # { \"description\" : \"Home telephone number\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :landline

    # { \"description\" : \"Fax number\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :fax

    # { \"description\" : \"Date of birth in YYYY-MM-DD format\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :dob

    # { \"description\" : \"VAT number\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :vat_number

    # { \"description\" : \"Any additional information\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :additional_information


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'created' => :'created',
        :'changed_by' => :'changedBy',
        :'updated' => :'updated',
        :'id' => :'id',
        :'account_id' => :'accountID',
        :'organization_id' => :'organizationID',
        :'email' => :'email',
        :'first_name' => :'firstName',
        :'last_name' => :'lastName',
        :'company_name' => :'companyName',
        :'logo_url' => :'logoURL',
        :'addresses' => :'addresses',
        :'mobile' => :'mobile',
        :'landline' => :'landline',
        :'fax' => :'fax',
        :'dob' => :'dob',
        :'vat_number' => :'vatNumber',
        :'additional_information' => :'additionalInformation'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'created' => :'DateTime',
        :'changed_by' => :'String',
        :'updated' => :'DateTime',
        :'id' => :'String',
        :'account_id' => :'String',
        :'organization_id' => :'String',
        :'email' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'company_name' => :'String',
        :'logo_url' => :'String',
        :'addresses' => :'Array<Address>',
        :'mobile' => :'String',
        :'landline' => :'String',
        :'fax' => :'String',
        :'dob' => :'DateTime',
        :'vat_number' => :'String',
        :'additional_information' => :'String'
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

      if attributes.has_key?(:'accountID')
        self.account_id = attributes[:'accountID']
      end

      if attributes.has_key?(:'organizationID')
        self.organization_id = attributes[:'organizationID']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'firstName')
        self.first_name = attributes[:'firstName']
      end

      if attributes.has_key?(:'lastName')
        self.last_name = attributes[:'lastName']
      end

      if attributes.has_key?(:'companyName')
        self.company_name = attributes[:'companyName']
      end

      if attributes.has_key?(:'logoURL')
        self.logo_url = attributes[:'logoURL']
      end

      if attributes.has_key?(:'addresses')
        if (value = attributes[:'addresses']).is_a?(Array)
          self.addresses = value
        end
      end

      if attributes.has_key?(:'mobile')
        self.mobile = attributes[:'mobile']
      end

      if attributes.has_key?(:'landline')
        self.landline = attributes[:'landline']
      end

      if attributes.has_key?(:'fax')
        self.fax = attributes[:'fax']
      end

      if attributes.has_key?(:'dob')
        self.dob = attributes[:'dob']
      end

      if attributes.has_key?(:'vatNumber')
        self.vat_number = attributes[:'vatNumber']
      end

      if attributes.has_key?(:'additionalInformation')
        self.additional_information = attributes[:'additionalInformation']
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
      return false if @email.nil?
      return false if @first_name.nil?
      return false if @last_name.nil?
      return true
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
          account_id == o.account_id &&
          organization_id == o.organization_id &&
          email == o.email &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          company_name == o.company_name &&
          logo_url == o.logo_url &&
          addresses == o.addresses &&
          mobile == o.mobile &&
          landline == o.landline &&
          fax == o.fax &&
          dob == o.dob &&
          vat_number == o.vat_number &&
          additional_information == o.additional_information
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [created, changed_by, updated, id, account_id, organization_id, email, first_name, last_name, company_name, logo_url, addresses, mobile, landline, fax, dob, vat_number, additional_information].hash
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
