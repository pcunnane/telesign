module Telesign
  module SMS
    class Request < PhoneVerification::Request

      request_method :requestSMS
      
      def self.message_format=(format)
        define_method(:message) do 
          format % verification_code
        end
      end
    end
  end
end