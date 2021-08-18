=begin
#AI Mastering API

#This is a AI Mastering API document. You can use the mastering feature of [AI Mastering](https://aimastering.com) through this API.

OpenAPI spec version: 1.0.0
Contact: aimasteringcom@gmail.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Aimastering::SpSubscriptionApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SpSubscriptionApi' do
  before do
    # run before each test
    @instance = Aimastering::SpSubscriptionApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SpSubscriptionApi' do
    it 'should create an instance of SpSubscriptionApi' do
      expect(@instance).to be_instance_of(Aimastering::SpSubscriptionApi)
    end
  end

  # unit tests for create_sp_subscription
  # Create a new smartphone subscription.
  # 
  # @param service Service.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :receipt Base64 encoded app store receipt. This parameter is effective only when the service is \&quot;appstore\&quot;.
  # @return [SpSubscription]
  describe 'create_sp_subscription test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_sp_subscriptions
  # Get all accessable smartphone subscriptions.
  # 
  # @param [Hash] opts the optional parameters
  # @return [Array<SpSubscription>]
  describe 'list_sp_subscriptions test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end