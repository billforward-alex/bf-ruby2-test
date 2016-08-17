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

# Unit tests for BillForward::FixedtermdefinitionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FixedtermdefinitionsApi' do
  before do
    # run before each test
    @instance = BillForward::FixedtermdefinitionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FixedtermdefinitionsApi' do
    it 'should create an instact of FixedtermdefinitionsApi' do
      expect(@instance).to be_instance_of(BillForward::FixedtermdefinitionsApi)
    end
  end

  # unit tests for create_fixed_term_definition
  # Create
  # {\&quot;nickname\&quot;:\&quot;Create a new fixed term definition\&quot;,\&quot;request\&quot;:\&quot;createFixedTermDefinitionRequest.html\&quot;,\&quot;response\&quot;:\&quot;createFixedTermDefinitionResponse.html\&quot;}
  # @param fixed_term_definiton The fixed-term-definition object to be updated.
  # @param [Hash] opts the optional parameters
  # @return [FixedTermDefinitionPagedMetadata]
  describe 'create_fixed_term_definition test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_fixed_term_definition
  # Update
  # {\&quot;nickname\&quot;:\&quot;Update a fixed-term definition\&quot;,\&quot;request\&quot;:\&quot;updateFixedTermDefinitionRequest.html\&quot;,\&quot;response\&quot;:\&quot;updateFixedTermDefinitionResponse.html\&quot;}
  # @param fixed_term_definiton The fixed-term-definition object to be updated.
  # @param [Hash] opts the optional parameters
  # @return [FixedTermDefinitionPagedMetadata]
  describe 'update_fixed_term_definition test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
