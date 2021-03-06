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

# Unit tests for BillForward::CoupondefinitionApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CoupondefinitionApi' do
  before do
    # run before each test
    @instance = BillForward::CoupondefinitionApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CoupondefinitionApi' do
    it 'should create an instact of CoupondefinitionApi' do
      expect(@instance).to be_instance_of(BillForward::CoupondefinitionApi)
    end
  end

  # unit tests for create_coupon_definition
  # Create a coupon-definition.
  # {\&quot;nickname\&quot;:\&quot;Create a new definition\&quot;,\&quot;request\&quot;:\&quot;createCouponDefinitionRequest.html\&quot;,\&quot;response\&quot;:\&quot;createCouponDefinitionResponse.html\&quot;}
  # @param coupon_definition The coupon-definiton object to be created.
  # @param [Hash] opts the optional parameters
  # @return [CouponDefinitionPagedMetadata]
  describe 'create_coupon_definition test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_coupon_definition
  # Retire a coupon-definition, specified by the coupon-definition-ID parameter.
  # {\&quot;nickname\&quot;:\&quot;Delete a definition\&quot;,\&quot;response\&quot;:\&quot;deleteCouponDefinitionByID.html\&quot;}
  # @param coupon_definition_id ID of the coupon-definition.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [CouponDefinitionPagedMetadata]
  describe 'delete_coupon_definition test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_coupon_definitions
  # Returns a collection of coupon-definitions. By default 10 values are returned. Records are returned in natural order.
  # {\&quot;nickname\&quot;:\&quot;Get all coupon definitions\&quot;,\&quot;response\&quot;:\&quot;getCouponDefinitionAll.html\&quot;}
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first product-rate-plan to return.
  # @option opts [Integer] :records The maximum number of product-rate-plans to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @option opts [BOOLEAN] :include_retired Whether retired coupon-definitions should be returned.
  # @return [CouponDefinitionPagedMetadata]
  describe 'get_all_coupon_definitions test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_coupon_definition_by_id
  # Returns a single coupon-definition, specified by the coupon-definition-ID parameter.
  # {\&quot;nickname\&quot;:\&quot;Get existing coupon definition\&quot;,\&quot;response\&quot;:\&quot;getCouponDefinitionByID.html\&quot;}
  # @param coupon_definition_id ID of the coupon-definition.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [CouponDefinitionPagedMetadata]
  describe 'get_coupon_definition_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_coupon_definition
  # Update a coupon-definition.
  # {\&quot;nickname\&quot;:\&quot;Update a definition\&quot;,\&quot;request\&quot;:\&quot;updateCouponDefinitionRequest.html\&quot;,\&quot;response\&quot;:\&quot;updateCouponDefinitionResponse.html\&quot;}
  # @param coupon_definition The coupon-definition object to be updated.
  # @param [Hash] opts the optional parameters
  # @return [CouponDefinitionPagedMetadata]
  describe 'update_coupon_definition test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
