=begin
#AI Mastering API

#This is a AI Mastering API document. You can use the mastering feature of [AI Mastering](https://aimastering.com) through this API.

OpenAPI spec version: 1.0.0
Contact: info@bakuage.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Aimastering::PaymentApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PaymentApi' do
  before do
    # run before each test
    @instance = Aimastering::PaymentApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentApi' do
    it 'should create an instance of PaymentApi' do
      expect(@instance).to be_instance_of(Aimastering::PaymentApi)
    end
  end

  # unit tests for create_payment
  # Create a new payment.
  # 
  # @param product_token This parameter represents the product token.
  # @param service This parameter represents the payment message.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :token This parameter represents the card token. This parameter is effective only when the service is \&quot;stripe\&quot;.
  # @return [Payment]
  describe 'create_payment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for execute_payment
  # Execute a payment by id.
  # 
  # @param id Payment id
  # @param payer_id This parameter represents the card token. This parameter is effective only when the service is \&quot;paypal\&quot;.
  # @param [Hash] opts the optional parameters
  # @return [Payment]
  describe 'execute_payment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_payment
  # Get a payment by id.
  # 
  # @param id Payment id
  # @param [Hash] opts the optional parameters
  # @return [Payment]
  describe 'get_payment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_payments
  # Get all accessable payments.
  # 
  # @param [Hash] opts the optional parameters
  # @return [Array<Payment>]
  describe 'list_payments test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
