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

# Unit tests for BillForward::PricingcomponenttiersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PricingcomponenttiersApi' do
  before do
    # run before each test
    @instance = BillForward::PricingcomponenttiersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PricingcomponenttiersApi' do
    it 'should create an instact of PricingcomponenttiersApi' do
      expect(@instance).to be_instance_of(BillForward::PricingcomponenttiersApi)
    end
  end

  # unit tests for create_pricing_component_tier
  # Create
  # {\&quot;nickname\&quot;:\&quot;Create a new tier\&quot;,\&quot;request\&quot;:\&quot;createPricingComponentTierRequest.html\&quot;,\&quot;response\&quot;:\&quot;createPricingComponentTierResponse.html\&quot;}
  # @param pricing_component_tier The pricing-component-tier object to be updated.
  # @param [Hash] opts the optional parameters
  # @return [PricingComponentTierPagedMetadata]
  describe 'create_pricing_component_tier test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_pricing_component_tiers
  # Returns a collection of pricing-component-tier-tiers. By default 10 values are returned. Records are returned in natural order.
  # {\&quot;nickname\&quot;:\&quot;Get all tiers\&quot;,\&quot;response\&quot;:\&quot;getPricingComponentTiersAll.html\&quot;}
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first pricing-component-tier-tier to return.
  # @option opts [Integer] :records The maximum number of pricing-component-tier-tiers to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @return [PricingComponentTierPagedMetadata]
  describe 'get_all_pricing_component_tiers test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_pricing_component_tier
  # Returns a collection of pricing-component-tier-tiers, specified by the pricing-component-tier-ID parameter. By default 10 values are returned. Records are returned in natural order.
  # {\&quot;nickname\&quot;:\&quot;Retrieve an existing tier\&quot;,\&quot;response\&quot;:\&quot;getPricingComponentTiersByID.html\&quot;}
  # @param pricing_component_tier_id The string ID of the pricing-component-tier-tier.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first pricing-component-tier-tier to return.
  # @option opts [Integer] :records The maximum number of pricing-component-tier-tiers to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @return [PricingComponentTierPagedMetadata]
  describe 'get_pricing_component_tier test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_pricing_component_tier_by_product_rate_plan_id
  # Returns a collection of pricing-component-tier-tiers, specified by the product-rate-plan-ID parameter. By default 10 values are returned. Records are returned in natural order.
  # {\&quot;nickname\&quot;:\&quot;Retrieve by rate-plan\&quot;,\&quot;response\&quot;:\&quot;getPricingComponentTiersByPRP.html\&quot;}
  # @param product_rate_plan_id The string product-rate-plan-ID of the pricing-component-tier-tier.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first pricing-component-tier-tier to return.
  # @option opts [Integer] :records The maximum number of pricing-component-tier-tiers to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @return [PricingComponentTierPagedMetadata]
  describe 'get_pricing_component_tier_by_product_rate_plan_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_pricing_component_tier
  # Update.
  # {\&quot;nickname\&quot;:\&quot;Update a tier\&quot;,\&quot;request\&quot;:\&quot;updatePricingComponentTierRequest.html\&quot;,\&quot;response\&quot;:\&quot;updatePricingComponentTierResponse.html\&quot;}
  # @param pricing_component_tier The pricing-component-tier object to be updated.
  # @param [Hash] opts the optional parameters
  # @return [PricingComponentTierPagedMetadata]
  describe 'update_pricing_component_tier test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
