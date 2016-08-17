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

# Unit tests for BillForward::SearchApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SearchApi' do
  before do
    # run before each test
    @instance = BillForward::SearchApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SearchApi' do
    it 'should create an instact of SearchApi' do
      expect(@instance).to be_instance_of(BillForward::SearchApi)
    end
  end

  # unit tests for perform_search
  # Returns the results of the global search specified by the query-string.
  # {\&quot;nickname\&quot;:\&quot;Search an organizations data\&quot;,\&quot;response\&quot;:\&quot;getSearchByID.html\&quot;}
  # @param query_string The query string used to search.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Array<String>] :types A list of entities which will be checked when searching
  # @option opts [Integer] :offset The starting index of the search results.
  # @option opts [Integer] :records The number of search results to return.
  # @option opts [BOOLEAN] :wildcard Toggle if we search for full words or whether a wildcard is used.
  # @option opts [BOOLEAN] :entity Is an entity returned with the search results.
  # @return [SearchResultPagedMetadata]
  describe 'perform_search test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
