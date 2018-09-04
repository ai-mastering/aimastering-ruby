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

# Unit tests for Aimastering::StatisticsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'StatisticsApi' do
  before do
    # run before each test
    @instance = Aimastering::StatisticsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StatisticsApi' do
    it 'should create an instance of StatisticsApi' do
      expect(@instance).to be_instance_of(Aimastering::StatisticsApi)
    end
  end

  # unit tests for list_anonymized_masterings
  # Get anonymized masterings.
  # 
  # @param [Hash] opts the optional parameters
  # @return [Array<AnonymizedMastering>]
  describe 'list_anonymized_masterings test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_kpis
  # Get KPIs.
  # 
  # @param [Hash] opts the optional parameters
  # @return [Kpi]
  describe 'list_kpis test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
