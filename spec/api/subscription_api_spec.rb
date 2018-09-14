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

# Unit tests for Aimastering::SubscriptionApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SubscriptionApi' do
  before do
    # run before each test
    @instance = Aimastering::SubscriptionApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SubscriptionApi' do
    it 'should create an instance of SubscriptionApi' do
      expect(@instance).to be_instance_of(Aimastering::SubscriptionApi)
    end
  end

  # unit tests for cancel_subscription
  # Cancel a subscription by id.
  # 
  # @param id Subscription id
  # @param [Hash] opts the optional parameters
  # @return [Subscription]
  describe 'cancel_subscription test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cancel_subscription_cancellation
  # Cancel the subscription cancellation  by id.
  # 
  # @param id Subscription id
  # @param [Hash] opts the optional parameters
  # @return [Subscription]
  describe 'cancel_subscription_cancellation test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_subscription
  # Create a new subscription.
  # 
  # @param service This parameter represents the payment message.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :stripe_plan_id The Stripe plan id. This parameter is effective only when the service is \&quot;stripe\&quot;.
  # @option opts [String] :token This parameter represents the card token. This parameter is effective only when the service is \&quot;stripe\&quot;.
  # @option opts [String] :affiliate_id Affiliate id of inviter user.
  # @return [Subscription]
  describe 'create_subscription test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_subscription
  # Get a subscription by id.
  # 
  # @param id Subscription id
  # @param [Hash] opts the optional parameters
  # @return [Subscription]
  describe 'get_subscription test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_subscriptions
  # Get all accessable subscriptions.
  # 
  # @param [Hash] opts the optional parameters
  # @return [Array<Subscription>]
  describe 'list_subscriptions test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
