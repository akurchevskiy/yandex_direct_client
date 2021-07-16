require 'date'

module YandexDirectClient
  class Client
    attr_accessor :account_quality

    attr_accessor :archived

    attr_accessor :client_id

    attr_accessor :client_info

    attr_accessor :country_id

    attr_accessor :created_at

    attr_accessor :currency

    attr_accessor :grants

    attr_accessor :bonuses

    attr_accessor :login

    attr_accessor :notification

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
        :'account_quality' => :'AccountQuality',
        :'archived' => :'Archived',
        :'client_id' => :'ClientId',
        :'client_info' => :'ClientInfo',
        :'country_id' => :'CountryId',
        :'created_at' => :'CreatedAt',
        :'currency' => :'Currency',
        :'grants' => :'Grants',
        :'bonuses' => :'Bonuses',
        :'login' => :'Login',
        :'notification' => :'Notification'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_quality' => :'Object',
        :'archived' => :'Object',
        :'client_id' => :'Object',
        :'client_info' => :'Object',
        :'country_id' => :'Object',
        :'created_at' => :'Object',
        :'currency' => :'Object',
        :'grants' => :'Object',
        :'bonuses' => :'Object',
        :'login' => :'Object',
        :'notification' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `YandexDirectClient::Client` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `YandexDirectClient::Client`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_quality')
        self.account_quality = attributes[:'account_quality']
      end

      if attributes.key?(:'archived')
        self.archived = attributes[:'archived']
      end

      if attributes.key?(:'client_id')
        self.client_id = attributes[:'client_id']
      end

      if attributes.key?(:'client_info')
        self.client_info = attributes[:'client_info']
      end

      if attributes.key?(:'country_id')
        self.country_id = attributes[:'country_id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'grants')
        if (value = attributes[:'grants']).is_a?(Array)
          self.grants = value
        end
      end

      if attributes.key?(:'bonuses')
        self.bonuses = attributes[:'bonuses']
      end

      if attributes.key?(:'login')
        self.login = attributes[:'login']
      end

      if attributes.key?(:'notification')
        self.notification = attributes[:'notification']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      archived_validator = EnumAttributeValidator.new('Object', ['YES', 'NO'])
      return false unless archived_validator.valid?(@archived)
      currency_validator = EnumAttributeValidator.new('Object', ['RUB', 'BYN', 'CHF', 'EUR', 'KZT', 'TRY', 'UAH', 'USD'])
      return false unless currency_validator.valid?(@currency)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] archived Object to be assigned
    def archived=(archived)
      validator = EnumAttributeValidator.new('Object', ['YES', 'NO'])
      unless validator.valid?(archived)
        fail ArgumentError, "invalid value for \"archived\", must be one of #{validator.allowable_values}."
      end
      @archived = archived
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency)
      validator = EnumAttributeValidator.new('Object', ['RUB', 'BYN', 'CHF', 'EUR', 'KZT', 'TRY', 'UAH', 'USD'])
      unless validator.valid?(currency)
        fail ArgumentError, "invalid value for \"currency\", must be one of #{validator.allowable_values}."
      end
      @currency = currency
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_quality == o.account_quality &&
          archived == o.archived &&
          client_id == o.client_id &&
          client_info == o.client_info &&
          country_id == o.country_id &&
          created_at == o.created_at &&
          currency == o.currency &&
          grants == o.grants &&
          bonuses == o.bonuses &&
          login == o.login &&
          notification == o.notification
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_quality, archived, client_id, client_info, country_id, created_at, currency, grants, bonuses, login, notification].hash
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
