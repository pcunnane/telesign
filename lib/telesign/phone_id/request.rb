module Telesign
  module PhoneID
    class Request < ApiRequest
  
      request_method :requestPhoneID
            
      attr_accessor :phone_number, :country_code
      
      alias_method :phoneNumber, :phone_number
      alias_method :countryCode, :country_code
      
      def initialize(phone)
        self.country_code = phone.country_code
        self.phone_number = phone.number
      end      
    end
  end
end