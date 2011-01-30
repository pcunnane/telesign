require 'forwardable'
module Telesign
  module PhoneID
    class Response < ApiResponse
      
      response_method :requestPhoneIDResult
      
      def_delegators :@response, :city, :county, :zip, :state, :country, :countryName, :timeZone, :latitude, :longitude, 
                     :aPIError, :cleansedCode, :maxNumLength, :referenceID, :timeZoneUTCMin, :timeZoneUTCMax, 
                     :primaryMetroCode, :originalPhoneNumber, :cleansedPhoneNumber
      
      alias_method :time_zone,             :timeZone
      alias_method :api_error,             :aPIError
      alias_method :country_name,          :countryName
      alias_method :cleansed_code,         :cleansedCode
      alias_method :max_num_length,        :maxNumLength
      alias_method :reference_id,          :referenceID
      alias_method :time_zone_utc_min,     :timeZoneUTCMin
      alias_method :time_zone_utc_max,     :timeZoneUTCMax
      alias_method :primary_metro_code,    :primaryMetroCode
      alias_method :original_phone_number, :originalPhoneNumber
      alias_method :cleansed_phone_number, :cleansedPhoneNumber

      attr_reader :phone_type
    
      def after_initialize
        @phone_type = Telesign::PhoneType.type_for_code(@response.typeofPhone)
      end
    end
  end
end