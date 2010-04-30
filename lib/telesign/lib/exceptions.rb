module Telesign
  module Exceptions
    class TelesignError < StandardError; end
    
    [ :InvalidParameter, :InvalidCustomerID, :InvalidReferenceID,
      :StatusUnavailable, :MaxRetriesReached, :AccountSuspended, 
      :SystemUnavailable ].each do |name|
      const_set(name, Class.new(TelesignError))
    end
    
    EXCEPTIONAL_ERRORS = {
      -10001 => InvalidParameter,
      -20001 => InvalidCustomerID,
      -20002 => InvalidReferenceID,
      -30001 => AccountSuspended,
      -40001 => StatusUnavailable,
      -50001 => MaxRetriesReached,
      -80001 => SystemUnavailable,
      -90001 => SystemUnavailable
    }
    
    def self.raise_if_error(api_error)
      if api_error && EXCEPTIONAL_ERRORS[api_error.code]
        raise EXCEPTIONAL_ERRORS[api_error.code].new(api_error.message)
      end
    end
  end
end