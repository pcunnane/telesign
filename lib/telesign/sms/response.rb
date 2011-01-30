module Telesign
  module SMS
    class Response < PhoneVerification::Response
      response_method :requestSMSResult
    end
  end
end