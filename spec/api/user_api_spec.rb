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

# Unit tests for Aimastering::UserApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UserApi' do
  before do
    # run before each test
    @instance = Aimastering::UserApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserApi' do
    it 'should create an instance of UserApi' do
      expect(@instance).to be_instance_of(Aimastering::UserApi)
    end
  end

  # unit tests for get_self
  # Get self user.
  # 
  # @param [Hash] opts the optional parameters
  # @return [User]
  describe 'get_self test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for notify_registration
  # Notify user is registered.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :affiliate_id The affiliate id of inviter.
  # @option opts [String] :referrer_url The referrer URL.
  # @return [User]
  describe 'notify_registration test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_invitation
  # Send invitation.
  # 
  # @param invitee_email The email of invitee.
  # @param [Hash] opts the optional parameters
  # @return [User]
  describe 'send_invitation test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_self
  # Update self user.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :agreed_terms_of_service Whether you agreed terms of service.
  # @option opts [String] :email The email.
  # @return [User]
  describe 'update_self test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
