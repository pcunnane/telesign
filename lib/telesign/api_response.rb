module Telesign
  class ApiResponse
    
    extend Forwardable
    
    def raise_exceptions
      Exceptions::raise_if_error(api_error)
    end
  end
end