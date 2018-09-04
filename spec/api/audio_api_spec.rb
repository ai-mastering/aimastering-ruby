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

# Unit tests for Aimastering::AudioApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AudioApi' do
  before do
    # run before each test
    @instance = Aimastering::AudioApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AudioApi' do
    it 'should create an instance of AudioApi' do
      expect(@instance).to be_instance_of(Aimastering::AudioApi)
    end
  end

  # unit tests for create_audio
  # Create a new audio.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [File] :file The file to upload.
  # @return [Audio]
  describe 'create_audio test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for download_audio
  # Download an audio data by id.
  # 
  # @param id Audio id
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'download_audio test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for download_audio_by_token
  # Download an audio data by audio_download_token.
  # 
  # @param download_token Audio download token
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'download_audio_by_token test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_audio
  # Get an audio by id.
  # 
  # @param id Audio id
  # @param [Hash] opts the optional parameters
  # @return [Audio]
  describe 'get_audio test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_audio_analysis
  # Get an audio analysis by id.
  # 
  # @param id Audio id
  # @param [Hash] opts the optional parameters
  # @return [AudioAnalysis]
  describe 'get_audio_analysis test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_audio_download_token
  # Get an audio download token by id.
  # 
  # @param id Audio id
  # @param [Hash] opts the optional parameters
  # @return [AudioDownloadToken]
  describe 'get_audio_download_token test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_audios
  # Get all audios accessable.
  # 
  # @param [Hash] opts the optional parameters
  # @return [Array<Audio>]
  describe 'list_audios test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
