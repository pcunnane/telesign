module Telesign
  module PhoneVerification
    class Response < ApiResponse

      def_delegators :@response, :aPIError, :referenceID
      
      alias_method :api_error, :aPIError
      alias_method :reference_id, :referenceID
      
      def initialize(response)
        @response = response.requestCALLResult
        raise_exceptions
      end
    end 
  end
end