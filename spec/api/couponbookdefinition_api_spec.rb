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

# Unit tests for BillForward::CouponbookdefinitionApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CouponbookdefinitionApi' do
  before do
    # run before each test
    @instance = BillForward::CouponbookdefinitionApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CouponbookdefinitionApi' do
    it 'should create an instact of CouponbookdefinitionApi' do
      expect(@instance).to be_instance_of(BillForward::CouponbookdefinitionApi)
    end
  end

  # unit tests for create_coupon_book_definition
  # Create a coupon-book-definition.
  # {\&quot;nickname\&quot;:\&quot;Create a new book definition\&quot;,\&quot;request\&quot;:\&quot;createCouponBookDefinitionRequest.html\&quot;,\&quot;response\&quot;:\&quot;createCouponBookDefinitionResponse.html\&quot;}
  # @param coupon_book_definition The coupon-book-definition object to be created.
  # @param [Hash] opts the optional parameters
  # @return [CouponBookDefinitionPagedMetadata]
  describe 'create_coupon_book_definition test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_coupon_book_definition
  # Retire a coupon-book-definition, specified by the coupon-book-definition-ID parameter.
  # {\&quot;nickname\&quot;:\&quot;Delete book definition\&quot;,\&quot;response\&quot;:\&quot;deleteCouponBookDefinitionByID.html\&quot;}
  # @param coupon_book_definition_id ID of the coupon-definition.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [CouponBookDefinitionPagedMetadata]
  describe 'delete_coupon_book_definition test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_coupon_book_definitions
  # Returns a collection of coupon-book-definitions. By default 10 values are returned. Records are returned in natural order.
  # {\&quot;nickname\&quot;:\&quot;Get all book definitions\&quot;,\&quot;response\&quot;:\&quot;getCouponBookDefinitionAll.html\&quot;}
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first product-rate-plan to return.
  # @option opts [Integer] :records The maximum number of product-rate-plans to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @option opts [BOOLEAN] :include_retired Whether retired coupon-book-definitions should be returned.
  # @return [CouponBookDefinitionPagedMetadata]
  describe 'get_all_coupon_book_definitions test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_coupon_book_definition_by_coupon_definition_id
  # Returns a collection of coupon-book-definitions, specified by coupon-definition-ID parameter. By default 10 coupon-book-definitions are returned. Records are returned in natural order.
  # {\&quot;nickname\&quot;:\&quot;Retrieve by coupon definition\&quot;,\&quot;response\&quot;:\&quot;getCouponBookDefinitionByCouponDefinitionID.html\&quot;}
  # @param coupon_definition_id The string coupon-definition-ID of the coupon-book-definition.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first coupon-book-definition to return.
  # @option opts [Integer] :records The maximum number of coupon-book-definitions to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @option opts [BOOLEAN] :include_retired Whether retired coupon-book-definitions should be returned.
  # @return [CouponBookDefinitionPagedMetadata]
  describe 'get_coupon_book_definition_by_coupon_definition_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_coupon_book_definition_by_id
  # Returns a single coupon-book-definition, specified by the coupon-book-definition-ID parameter.
  # {\&quot;nickname\&quot;:\&quot;Retrieve an existing book definition\&quot;,\&quot;response\&quot;:\&quot;getCouponBookDefinitionByID.html\&quot;}
  # @param coupon_book_definition_id ID of the coupon-book-definition.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [CouponBookDefinitionPagedMetadata]
  describe 'get_coupon_book_definition_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_coupon_book_definition
  # Update a coupon-book-definition.
  # {\&quot;nickname\&quot;:\&quot;Update a book definition\&quot;,\&quot;request\&quot;:\&quot;updateCouponBookDefinitionRequest.html\&quot;,\&quot;response\&quot;:\&quot;updateCouponBookDefinitionResponse.html\&quot;}
  # @param coupon_book_definition The coupon-book-definition object to be updated.
  # @param [Hash] opts the optional parameters
  # @return [CouponBookDefinitionPagedMetadata]
  describe 'update_coupon_book_definition test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
