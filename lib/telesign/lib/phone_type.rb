module Telesign
  module PhoneType
    
    types = %w(UNDETERMINED FIXED_LINE MOBILE PREPAID_MOBILE TOLL_FREE NON_FIXED_VOIP PAGER PAYPHONE INVALID RESTRICTED PERSONAL VOICEMAIL OTHER)
    types.each do |type|
      const_set(type, type)
    end
    
    CODES = {
      300 => UNDETERMINED,    
      301 => FIXED_LINE,      
      302 => MOBILE,          
      303 => PREPAID_MOBILE,  
      304 => TOLL_FREE,       
      305 => NON_FIXED_VOIP,  
      306 => PAGER,           
      307 => PAYPHONE,        
      308 => INVALID,         
      309 => RESTRICTED,      
      310 => PERSONAL,        
      311 => VOICEMAIL,       
      320 => OTHER           
    }
    
    def self.type_for_code(code)
      CODES[code.to_i]
    end
  end
end
