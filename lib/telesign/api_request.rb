module Telesign
  class ApiRequest
    
    mattr_accessor :customer_id, :authentication_id
    
    alias_method :customerID, :customer_id
    alias_method :authenticationID, :authentication_id
    
    def self.api_method(method = nil)
      @api_method ||= method
      @api_method
    end
    
    def call
      driver.send(self.class.api_method, self)
    end

    def driver
      Telesign::API::TelesignAPISoap.new
    end
  end
end