=begin
#Swagger Petstore

#:dog: :cat: :rabbit: This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters.

OpenAPI spec version: 1.0.0
Contact: apiteam@swagger.io
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.27
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for YandexDirectClient::ClientGetItemRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ClientGetItemRequest' do
  before do
    # run before each test
    @instance = YandexDirectClient::ClientGetItemRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ClientGetItemRequest' do
    it 'should create an instance of ClientGetItemRequest' do
      expect(@instance).to be_instance_of(YandexDirectClient::ClientGetItemRequest)
    end
  end
  describe 'test attribute "method"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["get"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.method = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "params"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "page"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end