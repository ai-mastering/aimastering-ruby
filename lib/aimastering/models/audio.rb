=begin
#AI Mastering API

#This is a AI Mastering API document. You can use the mastering feature of [AI Mastering](https://aimastering.com) through this API.

OpenAPI spec version: 1.0.0
Contact: aimasteringcom@gmail.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module Aimastering

  class Audio
    attr_accessor :id

    attr_accessor :file_resource_id

    attr_accessor :user_id

    attr_accessor :name

    attr_accessor :created_by_user

    attr_accessor :status

    attr_accessor :failure_reason

    attr_accessor :probe_json

    attr_accessor :rms

    attr_accessor :peak

    attr_accessor :loudness

    attr_accessor :dynamics

    attr_accessor :sharpness

    attr_accessor :space

    attr_accessor :loudness_range

    attr_accessor :drr

    attr_accessor :sound_quality

    attr_accessor :frames

    attr_accessor :sample_rate

    attr_accessor :channels

    attr_accessor :created_at

    attr_accessor :updated_at


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'file_resource_id' => :'file_resource_id',
        :'user_id' => :'user_id',
        :'name' => :'name',
        :'created_by_user' => :'created_by_user',
        :'status' => :'status',
        :'failure_reason' => :'failure_reason',
        :'probe_json' => :'probe_json',
        :'rms' => :'rms',
        :'peak' => :'peak',
        :'loudness' => :'loudness',
        :'dynamics' => :'dynamics',
        :'sharpness' => :'sharpness',
        :'space' => :'space',
        :'loudness_range' => :'loudness_range',
        :'drr' => :'drr',
        :'sound_quality' => :'sound_quality',
        :'frames' => :'frames',
        :'sample_rate' => :'sample_rate',
        :'channels' => :'channels',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'file_resource_id' => :'Integer',
        :'user_id' => :'Integer',
        :'name' => :'String',
        :'created_by_user' => :'BOOLEAN',
        :'status' => :'String',
        :'failure_reason' => :'String',
        :'probe_json' => :'String',
        :'rms' => :'Float',
        :'peak' => :'Float',
        :'loudness' => :'Float',
        :'dynamics' => :'Float',
        :'sharpness' => :'Float',
        :'space' => :'Float',
        :'loudness_range' => :'Float',
        :'drr' => :'Float',
        :'sound_quality' => :'Float',
        :'frames' => :'Integer',
        :'sample_rate' => :'Integer',
        :'channels' => :'Integer',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'file_resource_id')
        self.file_resource_id = attributes[:'file_resource_id']
      end

      if attributes.has_key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'created_by_user')
        self.created_by_user = attributes[:'created_by_user']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'failure_reason')
        self.failure_reason = attributes[:'failure_reason']
      end

      if attributes.has_key?(:'probe_json')
        self.probe_json = attributes[:'probe_json']
      end

      if attributes.has_key?(:'rms')
        self.rms = attributes[:'rms']
      end

      if attributes.has_key?(:'peak')
        self.peak = attributes[:'peak']
      end

      if attributes.has_key?(:'loudness')
        self.loudness = attributes[:'loudness']
      end

      if attributes.has_key?(:'dynamics')
        self.dynamics = attributes[:'dynamics']
      end

      if attributes.has_key?(:'sharpness')
        self.sharpness = attributes[:'sharpness']
      end

      if attributes.has_key?(:'space')
        self.space = attributes[:'space']
      end

      if attributes.has_key?(:'loudness_range')
        self.loudness_range = attributes[:'loudness_range']
      end

      if attributes.has_key?(:'drr')
        self.drr = attributes[:'drr']
      end

      if attributes.has_key?(:'sound_quality')
        self.sound_quality = attributes[:'sound_quality']
      end

      if attributes.has_key?(:'frames')
        self.frames = attributes[:'frames']
      end

      if attributes.has_key?(:'sample_rate')
        self.sample_rate = attributes[:'sample_rate']
      end

      if attributes.has_key?(:'channels')
        self.channels = attributes[:'channels']
      end

      if attributes.has_key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.has_key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          file_resource_id == o.file_resource_id &&
          user_id == o.user_id &&
          name == o.name &&
          created_by_user == o.created_by_user &&
          status == o.status &&
          failure_reason == o.failure_reason &&
          probe_json == o.probe_json &&
          rms == o.rms &&
          peak == o.peak &&
          loudness == o.loudness &&
          dynamics == o.dynamics &&
          sharpness == o.sharpness &&
          space == o.space &&
          loudness_range == o.loudness_range &&
          drr == o.drr &&
          sound_quality == o.sound_quality &&
          frames == o.frames &&
          sample_rate == o.sample_rate &&
          channels == o.channels &&
          created_at == o.created_at &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, file_resource_id, user_id, name, created_by_user, status, failure_reason, probe_json, rms, peak, loudness, dynamics, sharpness, space, loudness_range, drr, sound_quality, frames, sample_rate, channels, created_at, updated_at].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = Aimastering.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
