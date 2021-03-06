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

# Unit tests for BillForward::PaymentmethodsubscriptionlinksApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PaymentmethodsubscriptionlinksApi' do
  before do
    # run before each test
    @instance = BillForward::PaymentmethodsubscriptionlinksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentmethodsubscriptionlinksApi' do
    it 'should create an instact of PaymentmethodsubscriptionlinksApi' do
      expect(@instance).to be_instance_of(BillForward::PaymentmethodsubscriptionlinksApi)
    end
  end

  # unit tests for create_payment_method_subscription_link
  # Create
  # {\&quot;nickname\&quot;:\&quot;Add a payment method to a subscription\&quot;,\&quot;request\&quot;:\&quot;createPaymentMethodSubscriptionLinkRequest.html\&quot;,\&quot;response\&quot;:\&quot;createPaymentMethodSubscriptionLinkResponse.html\&quot;}
  # @param payment_method The payment-method object to be updated.
  # @param [Hash] opts the optional parameters
  # @return [PaymentMethodSubscriptionLinkPagedMetadata]
  describe 'create_payment_method_subscription_link test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for retire_payment_method_subscription_link
  # Retires the payment-method-subscription-link specified by the link-ID parameter.
  # {\&quot;nickname\&quot;:\&quot;Remove a payment method from a subscription\&quot;,\&quot;response\&quot;:\&quot;deletePaymentMethodSubscriptionLink.html\&quot;}
  # @param payment_method_subscription_link_id ID of the link.
  # @param organizations A list of organization-IDs used to restrict the scope of API calls.
  # @param [Hash] opts the optional parameters
  # @return [PaymentMethodSubscriptionLinkPagedMetadata]
  describe 'retire_payment_method_subscription_link test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
