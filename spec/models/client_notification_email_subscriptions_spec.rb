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

# Unit tests for YandexDirectClient::ClientNotificationEmailSubscriptions
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ClientNotificationEmailSubscriptions' do
  before do
    # run before each test
    @instance = YandexDirectClient::ClientNotificationEmailSubscriptions.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ClientNotificationEmailSubscriptions' do
    it 'should create an instance of ClientNotificationEmailSubscriptions' do
      expect(@instance).to be_instance_of(YandexDirectClient::ClientNotificationEmailSubscriptions)
    end
  end
  describe 'test attribute "option"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["RECEIVE_RECOMMENDATIONS", "TRACK_MANAGED_CAMPAIGNS", "TRACK_POSITION_CHANGES"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.option = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["YES", "NO"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.value = value }.not_to raise_error
      # end
    end
  end

end
