module Telesign
  module Status
    class Response < ApiResponse

      response_method :requestSTATUSResult
      
      module StatusCode
        ANSWERED             = "100"
        NOT_ANSWERED         = "101"
        DISCONNECTED         = "102"
        IN_PROGRESS          = "103"
        INVALID_PHONE_NUMBER = "104"
        NOT_YET_ATTEMPTED    = "105"
        FAILED               = "106"
        LINE_BUSY            = "107"
        SMS_DELIVERED        = "203"
        SMS_NOT_DELIVERED    = "207"
      end
      
      def_delegators :@response, :aPIError, :referenceID, :statusCode
      
      alias_method :api_error, :aPIError
      alias_method :reference_id, :referenceID
      alias_method :status_code, :statusCode
      
      def answered?
        [ StatusCode::ANSWERED, StatusCode::SMS_DELIVERED ].include?(status_code)
      end
      alias_method :delivered?, :answered?
      
      def verification_code_valid?
        @response.verificationCodeValid == "0"
      end
    end 
  end
end