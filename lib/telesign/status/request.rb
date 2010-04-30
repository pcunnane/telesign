module Telesign
  module Status
    class Request < ApiRequest
      
      api_method :requestSTATUS
            
      attr_accessor :reference_id, :verification_code
      
      alias_method :referenceID, :reference_id
      alias_method :verificationCode, :verification_code
      
      def initialize(reference_id)
        self.reference_id = reference_id
      end      
    end
  end
end