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

# Unit tests for Aimastering::PlanApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PlanApi' do
  before do
    # run before each test
    @instance = Aimastering::PlanApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PlanApi' do
    it 'should create an instance of PlanApi' do
      expect(@instance).to be_instance_of(Aimastering::PlanApi)
    end
  end

  # unit tests for list_plans
  # Get all accessable plans.
  # 
  # @param [Hash] opts the optional parameters
  # @return [Array<Plan>]
  describe 'list_plans test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end