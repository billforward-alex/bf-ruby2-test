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
require 'date'

# Unit tests for BillForward::BFError
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BFError' do
  before do
    # run before each test
    @instance = BillForward::BFError.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BFError' do
    it 'should create an instact of BFError' do
      expect(@instance).to be_instance_of(BillForward::BFError)
    end
  end
  describe 'test attribute "error_type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["BFError", "ServerError", "ValidationError", "UnserializationException", "Oauth", "PermissionsError", "PreconditionFailed", "NotImplemented", "InvocationError", "NoSuchEntity", "InconsistentState", "StripeOperationFailure", "BraintreeOperationFailure", "BraintreeValidationError", "SagePayOperationFailure", "TokenizationAuthCaptureFailure", "TokenizationPreAuthFailure", "CouponException", "CouponUniqueCodesRequestException", "CouponUniqueCodesResponseException", "RemoveCouponException", "AddCouponCodeToSubscriptionRequestException", "GatewayAuthenticationError", "GatewayAuthorizationError", "GatewayResourceNotFoundError", "GatewayProtocolVersionError", "GatewayInternalError", "GatewayDownTemporarilyError", "GatewayUnexpectedError", "GatewayUnhandledError", "GatewaySDKUnhandledError"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.error_type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "error_message"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "error_code"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "error_parameters"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
