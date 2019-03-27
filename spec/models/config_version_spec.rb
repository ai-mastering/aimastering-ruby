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
require 'date'

# Unit tests for Aimastering::ConfigVersion
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ConfigVersion' do
  before do
    # run before each test
    @instance = Aimastering::ConfigVersion.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ConfigVersion' do
    it 'should create an instance of ConfigVersion' do
      expect(@instance).to be_instance_of(Aimastering::ConfigVersion)
    end
  end
  describe 'test attribute "commit"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

