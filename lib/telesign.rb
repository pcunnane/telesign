module Telesign
  
  def self.identify(phone)
    request = PhoneID::Request.new(phone)
    yield(request) if block_given?
    PhoneID::Response.new(request.call)
  end
  
  def self.call(phone, verification_code)
    request = Call::Request.new(phone)
    request.verification_code = verification_code
    yield(request) if block_given?
    Call::Response.new(request.call)
  end
  
  def self.sms(phone, verification_code)
    request = SMS::Request.new(phone)
    request.verification_code = verification_code
    yield(request) if block_given?
    SMS::Response.new(request.call)
  end
  
  def self.status(reference_id, verification_code = nil)
    request = Status::Request.new(reference_id)
    request.verification_code = verification_code
    yield(request) if block_given?
    Status::Response.new(request.call)
  end
  
  ##
  # Generates a random 3 digit integer without leading zeroes.
  def self.verification_code
    rand(899) + 100
  end
end

require 'forwardable'

require 'telesign/phone'
require 'telesign/lib/country'
require 'telesign/lib/exceptions'
require 'telesign/lib/phone_type'
require 'telesign/lib/language'

require 'telesign/api_request'
require 'telesign/api_response'
require 'telesign/phone_id/request'
require 'telesign/phone_id/response'
require 'telesign/phone_verification/request'
require 'telesign/phone_verification/response'
require 'telesign/status/request'
require 'telesign/status/response'
require 'telesign/call/request'
require 'telesign/call/response'
require 'telesign/sms/request'
require 'telesign/sms/response'

require 'telesign/api/default'
require 'telesign/api/defaultMappingRegistry'
require 'telesign/api/defaultDriver'
