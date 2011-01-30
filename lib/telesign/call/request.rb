module Telesign
  module Call
    class Request < PhoneVerification::Request
      request_method :requestCALL
      
      alias_method :language=, :message=
    end
  end
end