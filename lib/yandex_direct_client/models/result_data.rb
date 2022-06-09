module YandexDirectClient
  class ResultData < BaseModel
    attr_accessor :currencies
    attr_accessor :add_results
    attr_accessor :clients
    attr_accessor :campaigns
    attr_accessor :ad_groups
    attr_accessor :keywords

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        currencies: :Currencies,
        add_results: :AddResults,
        clients: :Clients,
        campaigns: :Campaigns,
        ad_groups: :AdGroups,
        keywords: :Keywords
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        currencies: 'Array<Currencies>',
        add_results: 'Array<ActionResult>',
        clients: 'Array<Client>',
        campaigns: 'Array<Campaign>',
        ad_groups: 'Array<AdGroups>',
        keywords: 'Array<Keyword>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def set_attributes(attributes = {})
      if attributes.key?(:currencies)
        self.currencies = attributes[:currencies]
      end
      if attributes.key?(:ad_groups)
        self.ad_groups = attributes[:ad_groups]
      end
      if attributes.key?(:keywords)
        self.keywords = attributes[:keywords]
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
        currencies == o.currencies &&
        ad_groups == o.ad_groups
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [currencies, ad_groups, keywords].hash
    end
  end
end
