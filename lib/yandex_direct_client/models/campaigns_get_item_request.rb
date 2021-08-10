require 'date'

module YandexDirectClient
  class CampaignsGetItemRequest
    attr_accessor :method

    attr_accessor :params

    attr_accessor :field_names

    attr_accessor :text_campaign_field_names

    attr_accessor :mobile_app_campaign_field_names

    attr_accessor :dynamic_text_campaign_field_names

    attr_accessor :cpm_banner_campaign_field_names

    attr_accessor :smart_campaign_field_names

    attr_accessor :page

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'method' => :'method',
        :'params' => :'params',
        :'field_names' => :'FieldNames',
        :'text_campaign_field_names' => :'TextCampaignFieldNames',
        :'mobile_app_campaign_field_names' => :'MobileAppCampaignFieldNames',
        :'dynamic_text_campaign_field_names' => :'DynamicTextCampaignFieldNames',
        :'cpm_banner_campaign_field_names' => :'CpmBannerCampaignFieldNames',
        :'smart_campaign_field_names' => :'SmartCampaignFieldNames',
        :'page' => :'Page'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'method' => :'Object',
        :'params' => :'Object',
        :'field_names' => :'Object',
        :'text_campaign_field_names' => :'Object',
        :'mobile_app_campaign_field_names' => :'Object',
        :'dynamic_text_campaign_field_names' => :'Object',
        :'cpm_banner_campaign_field_names' => :'Object',
        :'smart_campaign_field_names' => :'Object',
        :'page' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `YandexDirectClient::CampaignsGetItemRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `YandexDirectClient::CampaignsGetItemRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'method')
        self.method = attributes[:'method']
      end

      if attributes.key?(:'params')
        self.params = attributes[:'params']
      end

      if attributes.key?(:'field_names')
        if (value = attributes[:'field_names']).is_a?(Array)
          self.field_names = value
        end
      end

      if attributes.key?(:'text_campaign_field_names')
        if (value = attributes[:'text_campaign_field_names']).is_a?(Array)
          self.text_campaign_field_names = value
        end
      end

      if attributes.key?(:'mobile_app_campaign_field_names')
        if (value = attributes[:'mobile_app_campaign_field_names']).is_a?(Array)
          self.mobile_app_campaign_field_names = value
        end
      end

      if attributes.key?(:'dynamic_text_campaign_field_names')
        if (value = attributes[:'dynamic_text_campaign_field_names']).is_a?(Array)
          self.dynamic_text_campaign_field_names = value
        end
      end

      if attributes.key?(:'cpm_banner_campaign_field_names')
        if (value = attributes[:'cpm_banner_campaign_field_names']).is_a?(Array)
          self.cpm_banner_campaign_field_names = value
        end
      end

      if attributes.key?(:'smart_campaign_field_names')
        if (value = attributes[:'smart_campaign_field_names']).is_a?(Array)
          self.smart_campaign_field_names = value
        end
      end

      if attributes.key?(:'page')
        self.page = attributes[:'page']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @method.nil?
        invalid_properties.push('invalid value for "method", method cannot be nil.')
      end

      if @params.nil?
        invalid_properties.push('invalid value for "params", params cannot be nil.')
      end

      if @field_names.nil?
        invalid_properties.push('invalid value for "field_names", field_names cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @method.nil?
      method_validator = EnumAttributeValidator.new('Object', ['get'])
      return false unless method_validator.valid?(@method)
      return false if @params.nil?
      return false if @field_names.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] method Object to be assigned
    def method=(method)
      validator = EnumAttributeValidator.new('Object', ['get'])
      unless validator.valid?(method)
        fail ArgumentError, "invalid value for \"method\", must be one of #{validator.allowable_values}."
      end
      @method = method
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          method == o.method &&
          params == o.params &&
          field_names == o.field_names &&
          text_campaign_field_names == o.text_campaign_field_names &&
          mobile_app_campaign_field_names == o.mobile_app_campaign_field_names &&
          dynamic_text_campaign_field_names == o.dynamic_text_campaign_field_names &&
          cpm_banner_campaign_field_names == o.cpm_banner_campaign_field_names &&
          smart_campaign_field_names == o.smart_campaign_field_names &&
          page == o.page
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [method, params, field_names, text_campaign_field_names, mobile_app_campaign_field_names, dynamic_text_campaign_field_names, cpm_banner_campaign_field_names, smart_campaign_field_names, page].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
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
      when :Boolean
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
        YandexDirectClient.const_get(type).build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end  end
end
