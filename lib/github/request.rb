require 'base64'
require 'addressable/uri'
require 'set'

module Github
  # Defines HTTP verbs
  module Request
    
    METHODS = [:get, :post, :put, :delete, :patch]
    METHODS_WITH_BODIES = Set.new [ :post, :put, :patch ]

    def get(path, params={}, options={})
      request(:get, path, params, options)
    end

    def patch(path, params={}, options={})
      request(:patch, path, params, options)
    end

    def post(path, params={}, options={})
      request(:post, path, params, options)
    end

    def put(path, params={}, options={})
      request(:put, path, params, options)
    end

    def delete(path, params={}, options={})
      request(:delete, path, params, options)
    end

    def request(method, path, params, options)
      if !METHODS.include?(method)
        raise ArgumentError, "unkown http method: #{method}"
      end
      
      connection(options) do |request|
        
      end

      case method.to_sym
      when :get, :delete
        
      when :post, :put, :patch

      end
    end

    def connection(options = {})

    end

    def basic_auth(login, password)
      auth = Base64.encode("#{login}:#{password}")
      auth.gsub!("\n", "")

    end

    def token_auth
    end

  end # Request
end # Github