module Telesign
  class ApiRequest
    
    mattr_accessor :customer_id, :authentication_id
    
    alias_method :customerID, :customer_id
    alias_method :authenticationID, :authentication_id
    
    def self.request_method(method = nil)
      @request_method ||= method
      @request_method
    end
    
    def call
      driver.send(self.class.request_method, self)
    end

    def driver
      Telesign::API::TelesignAPISoap.new
    end
  end
end