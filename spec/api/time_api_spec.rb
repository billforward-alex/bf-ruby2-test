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

# Unit tests for BillForward::TimeApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TimeApi' do
  before do
    # run before each test
    @instance = BillForward::TimeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TimeApi' do
    it 'should create an instact of TimeApi' do
      expect(@instance).to be_instance_of(BillForward::TimeApi)
    end
  end

  # unit tests for get_time_swagger
  # 
  # {\&quot;nickname\&quot;:\&quot;\&quot;,\&quot;request\&quot;:\&quot;advanceSubscriptionRequest.html\&quot;,\&quot;response\&quot;:\&quot;advanceSubscription.html\&quot;}
  # @param request The request
  # @param [Hash] opts the optional parameters
  # @return [TimeResponsePagedMetadata]
  describe 'get_time_swagger test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
