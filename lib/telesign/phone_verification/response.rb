module Telesign
  module PhoneVerification
    class Response < ApiResponse

      def_delegators :@response, :aPIError, :referenceID
      
      alias_method :api_error, :aPIError
      alias_method :reference_id, :referenceID
    end 
  end
end