module Telesign
  module PhoneVerification    
    class Request < ApiRequest
      
      api_method :requestCALL
    
      attr_accessor :country_code, :phone_number, :delay_time, :radial_count, 
                    :extension_content, :extension_type, :call_type, :caller_id, :priority,
                    :message, :project, :additional, :verification_code
                   
      alias_method :countryCode, :country_code 
      alias_method :phoneNumber, :phone_number
      alias_method :delayTime, :delay_time
      alias_method :redialCount, :radial_count
      alias_method :extensionContent, :extension_content
      alias_method :extensionType, :extension_type
      alias_method :callType, :call_type
      alias_method :callerID, :caller_id
      alias_method :verificationCode, :verification_code

      def initialize(phone)
        self.phone_number = phone.number
        self.country_code = phone.country_code
      end
      
      def language=(language)
        self.message = language
      end
    end
  end
end