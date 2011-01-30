module Telesign
  class ApiResponse
    
    extend Forwardable
    
    def self.response_method(method = nil)
      @response_method ||= method
      @response_method
    end
    
    def initialize(response)
      @response = response.send(self.class.response_method)
      raise_exceptions
      after_initialize
    end
    
    def after_initialize
    end
    
    def raise_exceptions
      Exceptions::raise_if_error(api_error)
    end
  end
end