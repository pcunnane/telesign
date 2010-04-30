module Telesign
  class Phone
    
    attr_accessor :number, :country_code
    
    def initialize(number, country = "US")
      self.number = number
      self.country_code = Country::country_code_for_name(country.to_s)
    end
  end
end