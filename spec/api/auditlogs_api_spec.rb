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

require 'spec_helper'
require 'json'

# Unit tests for BillForward::AuditlogsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuditlogsApi' do
  before do
    # run before each test
    @instance = BillForward::AuditlogsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuditlogsApi' do
    it 'should create an instact of AuditlogsApi' do
      expect(@instance).to be_instance_of(BillForward::AuditlogsApi)
    end
  end

  # unit tests for get_all_audit_entries
  # Returns a collection of all audit-log objects. By default 10 values are returned. Records are returned in natural order.
  # {\&quot;nickname\&quot;:\&quot;Get all\&quot;,\&quot;response\&quot;:\&quot;getAuditAll.html\&quot;}
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first audit-log entry to return.
  # @option opts [Integer] :records The maximum number of audit-log entry to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
  # @return [AuditEntryPagedMetadata]
  describe 'get_all_audit_entries test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_audit_entries_by_created_date
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
  # @return [AuditEntryPagedMetadata]
  describe 'get_audit_entries_by_created_date test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_audit_entry_by_entity_id
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
  # @return [AuditEntryPagedMetadata]
  describe 'get_audit_entry_by_entity_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_audit_entry_by_entity_type
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
  # @return [AuditEntryPagedMetadata]
  describe 'get_audit_entry_by_entity_type test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_audit_entry_by_id
  # Returns a single audit-log entry, specified by the audit-ID parameter.
  # {\&quot;nickname\&quot;:\&quot;Retrieve by id\&quot;,\&quot;response\&quot;:\&quot;getAuditByID.html\&quot;}
  # @param audit_id The string ID of the audit-log entry.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls. Multiple organization-IDs may be specified by repeated use of the query parameter. Example: ...&amp;organizations&#x3D;org1&amp;organizations&#x3D;org2
  # @return [AuditEntryPagedMetadata]
  describe 'get_audit_entry_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
