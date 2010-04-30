require 'xsd/qname'

module Telesign; module API


# {https://www.telesign.com/api/}Version
#   number - SOAP::SOAPString
class Version
  attr_accessor :number

  def initialize(number = nil)
    @number = number
  end
end

# {https://www.telesign.com/api/}SMS
#   referenceID - SOAP::SOAPString
#   aPIError - Telesign::API::APIErrorResponse
class SMS
  attr_accessor :referenceID
  attr_accessor :aPIError

  def initialize(referenceID = nil, aPIError = nil)
    @referenceID = referenceID
    @aPIError = aPIError
  end
end

# {https://www.telesign.com/api/}APIErrorResponse
#   code - SOAP::SOAPInt
#   message - SOAP::SOAPString
class APIErrorResponse
  attr_accessor :code
  attr_accessor :message

  def initialize(code = nil, message = nil)
    @code = code
    @message = message
  end
end

# {https://www.telesign.com/api/}PhoneID
#   countryCode - SOAP::SOAPString
#   originalPhoneNumber - SOAP::SOAPString
#   cleansedPhoneNumber - SOAP::SOAPString
#   cleansedCode - SOAP::SOAPString
#   city - SOAP::SOAPString
#   state - SOAP::SOAPString
#   zip - SOAP::SOAPString
#   primaryMetroCode - SOAP::SOAPString
#   county - SOAP::SOAPString
#   timeZone - SOAP::SOAPString
#   timeZoneUTCMin - SOAP::SOAPString
#   timeZoneUTCMax - SOAP::SOAPString
#   latitude - SOAP::SOAPString
#   longitude - SOAP::SOAPString
#   country - SOAP::SOAPString
#   countryName - SOAP::SOAPString
#   minNumLength - SOAP::SOAPString
#   maxNumLength - SOAP::SOAPString
#   referenceID - SOAP::SOAPString
#   typeofPhone - SOAP::SOAPString
#   aPIError - Telesign::API::APIErrorResponse
class PhoneID
  attr_accessor :countryCode
  attr_accessor :originalPhoneNumber
  attr_accessor :cleansedPhoneNumber
  attr_accessor :cleansedCode
  attr_accessor :city
  attr_accessor :state
  attr_accessor :zip
  attr_accessor :primaryMetroCode
  attr_accessor :county
  attr_accessor :timeZone
  attr_accessor :timeZoneUTCMin
  attr_accessor :timeZoneUTCMax
  attr_accessor :latitude
  attr_accessor :longitude
  attr_accessor :country
  attr_accessor :countryName
  attr_accessor :minNumLength
  attr_accessor :maxNumLength
  attr_accessor :referenceID
  attr_accessor :typeofPhone
  attr_accessor :aPIError

  def initialize(countryCode = nil, originalPhoneNumber = nil, cleansedPhoneNumber = nil, cleansedCode = nil, city = nil, state = nil, zip = nil, primaryMetroCode = nil, county = nil, timeZone = nil, timeZoneUTCMin = nil, timeZoneUTCMax = nil, latitude = nil, longitude = nil, country = nil, countryName = nil, minNumLength = nil, maxNumLength = nil, referenceID = nil, typeofPhone = nil, aPIError = nil)
    @countryCode = countryCode
    @originalPhoneNumber = originalPhoneNumber
    @cleansedPhoneNumber = cleansedPhoneNumber
    @cleansedCode = cleansedCode
    @city = city
    @state = state
    @zip = zip
    @primaryMetroCode = primaryMetroCode
    @county = county
    @timeZone = timeZone
    @timeZoneUTCMin = timeZoneUTCMin
    @timeZoneUTCMax = timeZoneUTCMax
    @latitude = latitude
    @longitude = longitude
    @country = country
    @countryName = countryName
    @minNumLength = minNumLength
    @maxNumLength = maxNumLength
    @referenceID = referenceID
    @typeofPhone = typeofPhone
    @aPIError = aPIError
  end
end

# {https://www.telesign.com/api/}STATUS
#   statusCode - SOAP::SOAPString
#   verificationCodeValid - SOAP::SOAPString
#   additional - SOAP::SOAPString
#   keyPress - SOAP::SOAPString
#   aPIError - Telesign::API::APIErrorResponse
class STATUS
  attr_accessor :statusCode
  attr_accessor :verificationCodeValid
  attr_accessor :additional
  attr_accessor :keyPress
  attr_accessor :aPIError

  def initialize(statusCode = nil, verificationCodeValid = nil, additional = nil, keyPress = nil, aPIError = nil)
    @statusCode = statusCode
    @verificationCodeValid = verificationCodeValid
    @additional = additional
    @keyPress = keyPress
    @aPIError = aPIError
  end
end

# {https://www.telesign.com/api/}Call
#   referenceID - SOAP::SOAPString
#   aPIError - Telesign::API::APIErrorResponse
class Call
  attr_accessor :referenceID
  attr_accessor :aPIError

  def initialize(referenceID = nil, aPIError = nil)
    @referenceID = referenceID
    @aPIError = aPIError
  end
end

# {https://www.telesign.com/api/}PhoneIDPlatinum
#   countryCode - SOAP::SOAPString
#   originalPhoneNumber - SOAP::SOAPString
#   cleansedPhoneNumber - SOAP::SOAPString
#   cleansedCode - SOAP::SOAPString
#   phoneCity - SOAP::SOAPString
#   phoneState - SOAP::SOAPString
#   phoneZip - SOAP::SOAPString
#   primaryMetroCode - SOAP::SOAPString
#   phoneCounty - SOAP::SOAPString
#   phoneLatitude - SOAP::SOAPString
#   phoneLongitude - SOAP::SOAPString
#   phoneCountry - SOAP::SOAPString
#   phoneCountryName - SOAP::SOAPString
#   minNumLength - SOAP::SOAPString
#   maxNumLength - SOAP::SOAPString
#   referenceID - SOAP::SOAPString
#   typeofPhone - SOAP::SOAPString
#   newAreaCode - SOAP::SOAPString
#   dialable - SOAP::SOAPString
#   pointCode - SOAP::SOAPString
#   nameType - SOAP::SOAPString
#   name1 - SOAP::SOAPString
#   name2 - SOAP::SOAPString
#   name3 - SOAP::SOAPString
#   addressStatus - SOAP::SOAPString
#   addressType - SOAP::SOAPString
#   buildingName - SOAP::SOAPString
#   address1Number - SOAP::SOAPString
#   streetPreDirection - SOAP::SOAPString
#   streetName - SOAP::SOAPString
#   streetType - SOAP::SOAPString
#   streetPostDirection - SOAP::SOAPString
#   address2Number - SOAP::SOAPString
#   address2Type - SOAP::SOAPString
#   addressCity - SOAP::SOAPString
#   addressState - SOAP::SOAPString
#   addressZip - SOAP::SOAPString
#   addressZipPlus4 - SOAP::SOAPString
#   addressCountryCode - SOAP::SOAPString
#   addressCountryName - SOAP::SOAPString
#   streetNameAccent - SOAP::SOAPString
#   addressCityAccent - SOAP::SOAPString
#   addressStateAccent - SOAP::SOAPString
#   fIPSCode - SOAP::SOAPString
#   deliveryPointCode - SOAP::SOAPString
#   carrierRoute - SOAP::SOAPString
#   routeTypeDesc - SOAP::SOAPString
#   routeTypeNum - SOAP::SOAPString
#   addressTimeZoneCode - SOAP::SOAPString
#   addressTimeZoneUTCMin - SOAP::SOAPString
#   addressTimeZoneUTCMax - SOAP::SOAPString
#   dSTObserved - SOAP::SOAPString
#   spatiallyInconsistent - SOAP::SOAPString
#   uniqueSource - SOAP::SOAPString
#   aPIError - Telesign::API::APIErrorResponse
class PhoneIDPlatinum
  attr_accessor :countryCode
  attr_accessor :originalPhoneNumber
  attr_accessor :cleansedPhoneNumber
  attr_accessor :cleansedCode
  attr_accessor :phoneCity
  attr_accessor :phoneState
  attr_accessor :phoneZip
  attr_accessor :primaryMetroCode
  attr_accessor :phoneCounty
  attr_accessor :phoneLatitude
  attr_accessor :phoneLongitude
  attr_accessor :phoneCountry
  attr_accessor :phoneCountryName
  attr_accessor :minNumLength
  attr_accessor :maxNumLength
  attr_accessor :referenceID
  attr_accessor :typeofPhone
  attr_accessor :newAreaCode
  attr_accessor :dialable
  attr_accessor :pointCode
  attr_accessor :nameType
  attr_accessor :name1
  attr_accessor :name2
  attr_accessor :name3
  attr_accessor :addressStatus
  attr_accessor :addressType
  attr_accessor :buildingName
  attr_accessor :address1Number
  attr_accessor :streetPreDirection
  attr_accessor :streetName
  attr_accessor :streetType
  attr_accessor :streetPostDirection
  attr_accessor :address2Number
  attr_accessor :address2Type
  attr_accessor :addressCity
  attr_accessor :addressState
  attr_accessor :addressZip
  attr_accessor :addressZipPlus4
  attr_accessor :addressCountryCode
  attr_accessor :addressCountryName
  attr_accessor :streetNameAccent
  attr_accessor :addressCityAccent
  attr_accessor :addressStateAccent
  attr_accessor :fIPSCode
  attr_accessor :deliveryPointCode
  attr_accessor :carrierRoute
  attr_accessor :routeTypeDesc
  attr_accessor :routeTypeNum
  attr_accessor :addressTimeZoneCode
  attr_accessor :addressTimeZoneUTCMin
  attr_accessor :addressTimeZoneUTCMax
  attr_accessor :dSTObserved
  attr_accessor :spatiallyInconsistent
  attr_accessor :uniqueSource
  attr_accessor :aPIError

  def initialize(countryCode = nil, originalPhoneNumber = nil, cleansedPhoneNumber = nil, cleansedCode = nil, phoneCity = nil, phoneState = nil, phoneZip = nil, primaryMetroCode = nil, phoneCounty = nil, phoneLatitude = nil, phoneLongitude = nil, phoneCountry = nil, phoneCountryName = nil, minNumLength = nil, maxNumLength = nil, referenceID = nil, typeofPhone = nil, newAreaCode = nil, dialable = nil, pointCode = nil, nameType = nil, name1 = nil, name2 = nil, name3 = nil, addressStatus = nil, addressType = nil, buildingName = nil, address1Number = nil, streetPreDirection = nil, streetName = nil, streetType = nil, streetPostDirection = nil, address2Number = nil, address2Type = nil, addressCity = nil, addressState = nil, addressZip = nil, addressZipPlus4 = nil, addressCountryCode = nil, addressCountryName = nil, streetNameAccent = nil, addressCityAccent = nil, addressStateAccent = nil, fIPSCode = nil, deliveryPointCode = nil, carrierRoute = nil, routeTypeDesc = nil, routeTypeNum = nil, addressTimeZoneCode = nil, addressTimeZoneUTCMin = nil, addressTimeZoneUTCMax = nil, dSTObserved = nil, spatiallyInconsistent = nil, uniqueSource = nil, aPIError = nil)
    @countryCode = countryCode
    @originalPhoneNumber = originalPhoneNumber
    @cleansedPhoneNumber = cleansedPhoneNumber
    @cleansedCode = cleansedCode
    @phoneCity = phoneCity
    @phoneState = phoneState
    @phoneZip = phoneZip
    @primaryMetroCode = primaryMetroCode
    @phoneCounty = phoneCounty
    @phoneLatitude = phoneLatitude
    @phoneLongitude = phoneLongitude
    @phoneCountry = phoneCountry
    @phoneCountryName = phoneCountryName
    @minNumLength = minNumLength
    @maxNumLength = maxNumLength
    @referenceID = referenceID
    @typeofPhone = typeofPhone
    @newAreaCode = newAreaCode
    @dialable = dialable
    @pointCode = pointCode
    @nameType = nameType
    @name1 = name1
    @name2 = name2
    @name3 = name3
    @addressStatus = addressStatus
    @addressType = addressType
    @buildingName = buildingName
    @address1Number = address1Number
    @streetPreDirection = streetPreDirection
    @streetName = streetName
    @streetType = streetType
    @streetPostDirection = streetPostDirection
    @address2Number = address2Number
    @address2Type = address2Type
    @addressCity = addressCity
    @addressState = addressState
    @addressZip = addressZip
    @addressZipPlus4 = addressZipPlus4
    @addressCountryCode = addressCountryCode
    @addressCountryName = addressCountryName
    @streetNameAccent = streetNameAccent
    @addressCityAccent = addressCityAccent
    @addressStateAccent = addressStateAccent
    @fIPSCode = fIPSCode
    @deliveryPointCode = deliveryPointCode
    @carrierRoute = carrierRoute
    @routeTypeDesc = routeTypeDesc
    @routeTypeNum = routeTypeNum
    @addressTimeZoneCode = addressTimeZoneCode
    @addressTimeZoneUTCMin = addressTimeZoneUTCMin
    @addressTimeZoneUTCMax = addressTimeZoneUTCMax
    @dSTObserved = dSTObserved
    @spatiallyInconsistent = spatiallyInconsistent
    @uniqueSource = uniqueSource
    @aPIError = aPIError
  end
end

# {https://www.telesign.com/api/}InformationQualityScore
#   referenceID - SOAP::SOAPString
#   score - SOAP::SOAPString
#   phoneVerify - SOAP::SOAPString
#   listingType - SOAP::SOAPString
#   validAddress - SOAP::SOAPString
#   validPhoneNumber - SOAP::SOAPString
#   inService6M - SOAP::SOAPString
#   onDoNotCall - SOAP::SOAPString
#   nearAddress - SOAP::SOAPString
#   recentChange - SOAP::SOAPString
#   addressType - SOAP::SOAPString
#   basedOnPhoneNumber - Telesign::API::BasedOnPhoneNumberResponse
#   basedOnAddress - Telesign::API::BasedOnAddressResponse
#   standardizedAddress - Telesign::API::StandardizedAddressResponse
#   aPIError - Telesign::API::APIErrorResponse
class InformationQualityScore
  attr_accessor :referenceID
  attr_accessor :score
  attr_accessor :phoneVerify
  attr_accessor :listingType
  attr_accessor :validAddress
  attr_accessor :validPhoneNumber
  attr_accessor :inService6M
  attr_accessor :onDoNotCall
  attr_accessor :nearAddress
  attr_accessor :recentChange
  attr_accessor :addressType
  attr_accessor :basedOnPhoneNumber
  attr_accessor :basedOnAddress
  attr_accessor :standardizedAddress
  attr_accessor :aPIError

  def initialize(referenceID = nil, score = nil, phoneVerify = nil, listingType = nil, validAddress = nil, validPhoneNumber = nil, inService6M = nil, onDoNotCall = nil, nearAddress = nil, recentChange = nil, addressType = nil, basedOnPhoneNumber = nil, basedOnAddress = nil, standardizedAddress = nil, aPIError = nil)
    @referenceID = referenceID
    @score = score
    @phoneVerify = phoneVerify
    @listingType = listingType
    @validAddress = validAddress
    @validPhoneNumber = validPhoneNumber
    @inService6M = inService6M
    @onDoNotCall = onDoNotCall
    @nearAddress = nearAddress
    @recentChange = recentChange
    @addressType = addressType
    @basedOnPhoneNumber = basedOnPhoneNumber
    @basedOnAddress = basedOnAddress
    @standardizedAddress = standardizedAddress
    @aPIError = aPIError
  end
end

# {https://www.telesign.com/api/}BasedOnPhoneNumberResponse
#   name - SOAP::SOAPString
#   street - SOAP::SOAPString
#   city - SOAP::SOAPString
#   state - SOAP::SOAPString
#   zip - SOAP::SOAPString
class BasedOnPhoneNumberResponse
  attr_accessor :name
  attr_accessor :street
  attr_accessor :city
  attr_accessor :state
  attr_accessor :zip

  def initialize(name = nil, street = nil, city = nil, state = nil, zip = nil)
    @name = name
    @street = street
    @city = city
    @state = state
    @zip = zip
  end
end

# {https://www.telesign.com/api/}BasedOnAddressResponse
#   name - SOAP::SOAPString
#   street - SOAP::SOAPString
#   city - SOAP::SOAPString
#   state - SOAP::SOAPString
#   zip - SOAP::SOAPString
#   phoneNumber - SOAP::SOAPString
class BasedOnAddressResponse
  attr_accessor :name
  attr_accessor :street
  attr_accessor :city
  attr_accessor :state
  attr_accessor :zip
  attr_accessor :phoneNumber

  def initialize(name = nil, street = nil, city = nil, state = nil, zip = nil, phoneNumber = nil)
    @name = name
    @street = street
    @city = city
    @state = state
    @zip = zip
    @phoneNumber = phoneNumber
  end
end

# {https://www.telesign.com/api/}StandardizedAddressResponse
#   line1 - SOAP::SOAPString
#   line2 - SOAP::SOAPString
class StandardizedAddressResponse
  attr_accessor :line1
  attr_accessor :line2

  def initialize(line1 = nil, line2 = nil)
    @line1 = line1
    @line2 = line2
  end
end

# {https://www.telesign.com/api/}FraudAnalyzer
#   referenceID - SOAP::SOAPString
#   countryMatch - SOAP::SOAPString
#   countryCode - SOAP::SOAPString
#   highRiskCountry - SOAP::SOAPString
#   iPBillingDistance - SOAP::SOAPString
#   iPRegion - SOAP::SOAPString
#   iPCity - SOAP::SOAPString
#   iPLatitude - SOAP::SOAPString
#   iPLongitude - SOAP::SOAPString
#   iPISP - SOAP::SOAPString
#   iPOrg - SOAP::SOAPString
#   anonymousProxy - SOAP::SOAPString
#   proxyScore - SOAP::SOAPString
#   isTransparentProxy - SOAP::SOAPString
#   freeEmail - SOAP::SOAPString
#   highRiskEmail - SOAP::SOAPString
#   highRiskPassword - SOAP::SOAPString
#   highRiskUsername - SOAP::SOAPString
#   binMatch - SOAP::SOAPString
#   binCountry - SOAP::SOAPString
#   binNameMatch - SOAP::SOAPString
#   binName - SOAP::SOAPString
#   binPhoneMatch - SOAP::SOAPString
#   binPhone - SOAP::SOAPString
#   phoneNumberInBillingLocation - SOAP::SOAPString
#   shipForward - SOAP::SOAPString
#   cityZipMatch - SOAP::SOAPString
#   shipCityZipMatch - SOAP::SOAPString
#   fraudScore - SOAP::SOAPString
#   fraudScoreDescription - SOAP::SOAPString
#   aPIError - Telesign::API::APIErrorResponse
class FraudAnalyzer
  attr_accessor :referenceID
  attr_accessor :countryMatch
  attr_accessor :countryCode
  attr_accessor :highRiskCountry
  attr_accessor :iPBillingDistance
  attr_accessor :iPRegion
  attr_accessor :iPCity
  attr_accessor :iPLatitude
  attr_accessor :iPLongitude
  attr_accessor :iPISP
  attr_accessor :iPOrg
  attr_accessor :anonymousProxy
  attr_accessor :proxyScore
  attr_accessor :isTransparentProxy
  attr_accessor :freeEmail
  attr_accessor :highRiskEmail
  attr_accessor :highRiskPassword
  attr_accessor :highRiskUsername
  attr_accessor :binMatch
  attr_accessor :binCountry
  attr_accessor :binNameMatch
  attr_accessor :binName
  attr_accessor :binPhoneMatch
  attr_accessor :binPhone
  attr_accessor :phoneNumberInBillingLocation
  attr_accessor :shipForward
  attr_accessor :cityZipMatch
  attr_accessor :shipCityZipMatch
  attr_accessor :fraudScore
  attr_accessor :fraudScoreDescription
  attr_accessor :aPIError

  def initialize(referenceID = nil, countryMatch = nil, countryCode = nil, highRiskCountry = nil, iPBillingDistance = nil, iPRegion = nil, iPCity = nil, iPLatitude = nil, iPLongitude = nil, iPISP = nil, iPOrg = nil, anonymousProxy = nil, proxyScore = nil, isTransparentProxy = nil, freeEmail = nil, highRiskEmail = nil, highRiskPassword = nil, highRiskUsername = nil, binMatch = nil, binCountry = nil, binNameMatch = nil, binName = nil, binPhoneMatch = nil, binPhone = nil, phoneNumberInBillingLocation = nil, shipForward = nil, cityZipMatch = nil, shipCityZipMatch = nil, fraudScore = nil, fraudScoreDescription = nil, aPIError = nil)
    @referenceID = referenceID
    @countryMatch = countryMatch
    @countryCode = countryCode
    @highRiskCountry = highRiskCountry
    @iPBillingDistance = iPBillingDistance
    @iPRegion = iPRegion
    @iPCity = iPCity
    @iPLatitude = iPLatitude
    @iPLongitude = iPLongitude
    @iPISP = iPISP
    @iPOrg = iPOrg
    @anonymousProxy = anonymousProxy
    @proxyScore = proxyScore
    @isTransparentProxy = isTransparentProxy
    @freeEmail = freeEmail
    @highRiskEmail = highRiskEmail
    @highRiskPassword = highRiskPassword
    @highRiskUsername = highRiskUsername
    @binMatch = binMatch
    @binCountry = binCountry
    @binNameMatch = binNameMatch
    @binName = binName
    @binPhoneMatch = binPhoneMatch
    @binPhone = binPhone
    @phoneNumberInBillingLocation = phoneNumberInBillingLocation
    @shipForward = shipForward
    @cityZipMatch = cityZipMatch
    @shipCityZipMatch = shipCityZipMatch
    @fraudScore = fraudScore
    @fraudScoreDescription = fraudScoreDescription
    @aPIError = aPIError
  end
end

# {https://www.telesign.com/api/}RequestAPIversion
class RequestAPIversion
  def initialize
  end
end

# {https://www.telesign.com/api/}RequestAPIversionResponse
#   requestAPIversionResult - Telesign::API::Version
class RequestAPIversionResponse
  attr_accessor :requestAPIversionResult

  def initialize(requestAPIversionResult = nil)
    @requestAPIversionResult = requestAPIversionResult
  end
end

# {https://www.telesign.com/api/}RequestSMS
#   customerID - SOAP::SOAPString
#   authenticationID - SOAP::SOAPString
#   countryCode - SOAP::SOAPString
#   phoneNumber - SOAP::SOAPString
#   language - SOAP::SOAPString
#   verificationCode - SOAP::SOAPString
#   message - SOAP::SOAPString
class RequestSMS
  attr_accessor :customerID
  attr_accessor :authenticationID
  attr_accessor :countryCode
  attr_accessor :phoneNumber
  attr_accessor :language
  attr_accessor :verificationCode
  attr_accessor :message

  def initialize(customerID = nil, authenticationID = nil, countryCode = nil, phoneNumber = nil, language = nil, verificationCode = nil, message = nil)
    @customerID = customerID
    @authenticationID = authenticationID
    @countryCode = countryCode
    @phoneNumber = phoneNumber
    @language = language
    @verificationCode = verificationCode
    @message = message
  end
end

# {https://www.telesign.com/api/}RequestSMSResponse
#   requestSMSResult - Telesign::API::SMS
class RequestSMSResponse
  attr_accessor :requestSMSResult

  def initialize(requestSMSResult = nil)
    @requestSMSResult = requestSMSResult
  end
end

# {https://www.telesign.com/api/}RequestPhoneID
#   customerID - SOAP::SOAPString
#   authenticationID - SOAP::SOAPString
#   countryCode - SOAP::SOAPString
#   phoneNumber - SOAP::SOAPString
class RequestPhoneID
  attr_accessor :customerID
  attr_accessor :authenticationID
  attr_accessor :countryCode
  attr_accessor :phoneNumber

  def initialize(customerID = nil, authenticationID = nil, countryCode = nil, phoneNumber = nil)
    @customerID = customerID
    @authenticationID = authenticationID
    @countryCode = countryCode
    @phoneNumber = phoneNumber
  end
end

# {https://www.telesign.com/api/}RequestPhoneIDResponse
#   requestPhoneIDResult - Telesign::API::PhoneID
class RequestPhoneIDResponse
  attr_accessor :requestPhoneIDResult

  def initialize(requestPhoneIDResult = nil)
    @requestPhoneIDResult = requestPhoneIDResult
  end
end

# {https://www.telesign.com/api/}RequestSTATUS
#   customerID - SOAP::SOAPString
#   authenticationID - SOAP::SOAPString
#   referenceID - SOAP::SOAPString
#   verificationCode - SOAP::SOAPString
class RequestSTATUS
  attr_accessor :customerID
  attr_accessor :authenticationID
  attr_accessor :referenceID
  attr_accessor :verificationCode

  def initialize(customerID = nil, authenticationID = nil, referenceID = nil, verificationCode = nil)
    @customerID = customerID
    @authenticationID = authenticationID
    @referenceID = referenceID
    @verificationCode = verificationCode
  end
end

# {https://www.telesign.com/api/}RequestSTATUSResponse
#   requestSTATUSResult - Telesign::API::STATUS
class RequestSTATUSResponse
  attr_accessor :requestSTATUSResult

  def initialize(requestSTATUSResult = nil)
    @requestSTATUSResult = requestSTATUSResult
  end
end

# {https://www.telesign.com/api/}RequestCALL
#   customerID - SOAP::SOAPString
#   authenticationID - SOAP::SOAPString
#   countryCode - SOAP::SOAPString
#   phoneNumber - SOAP::SOAPString
#   language - SOAP::SOAPString
#   verificationCode - SOAP::SOAPString
#   priority - SOAP::SOAPString
#   delayTime - SOAP::SOAPString
#   redialCount - SOAP::SOAPString
#   extensionContent - SOAP::SOAPString
#   extensionType - SOAP::SOAPString
#   message - SOAP::SOAPString
#   callType - SOAP::SOAPString
#   callerID - SOAP::SOAPString
#   project - SOAP::SOAPString
#   additional - SOAP::SOAPString
class RequestCALL
  attr_accessor :customerID
  attr_accessor :authenticationID
  attr_accessor :countryCode
  attr_accessor :phoneNumber
  attr_accessor :language
  attr_accessor :verificationCode
  attr_accessor :priority
  attr_accessor :delayTime
  attr_accessor :redialCount
  attr_accessor :extensionContent
  attr_accessor :extensionType
  attr_accessor :message
  attr_accessor :callType
  attr_accessor :callerID
  attr_accessor :project
  attr_accessor :additional

  def initialize(customerID = nil, authenticationID = nil, countryCode = nil, phoneNumber = nil, language = nil, verificationCode = nil, priority = nil, delayTime = nil, redialCount = nil, extensionContent = nil, extensionType = nil, message = nil, callType = nil, callerID = nil, project = nil, additional = nil)
    @customerID = customerID
    @authenticationID = authenticationID
    @countryCode = countryCode
    @phoneNumber = phoneNumber
    @language = language
    @verificationCode = verificationCode
    @priority = priority
    @delayTime = delayTime
    @redialCount = redialCount
    @extensionContent = extensionContent
    @extensionType = extensionType
    @message = message
    @callType = callType
    @callerID = callerID
    @project = project
    @additional = additional
  end
end

# {https://www.telesign.com/api/}RequestCALLResponse
#   requestCALLResult - Telesign::API::Call
class RequestCALLResponse
  attr_accessor :requestCALLResult

  def initialize(requestCALLResult = nil)
    @requestCALLResult = requestCALLResult
  end
end

# {https://www.telesign.com/api/}RequestPhoneIDPlatinum
#   customerID - SOAP::SOAPString
#   authenticationID - SOAP::SOAPString
#   countryCode - SOAP::SOAPString
#   phoneNumber - SOAP::SOAPString
class RequestPhoneIDPlatinum
  attr_accessor :customerID
  attr_accessor :authenticationID
  attr_accessor :countryCode
  attr_accessor :phoneNumber

  def initialize(customerID = nil, authenticationID = nil, countryCode = nil, phoneNumber = nil)
    @customerID = customerID
    @authenticationID = authenticationID
    @countryCode = countryCode
    @phoneNumber = phoneNumber
  end
end

# {https://www.telesign.com/api/}RequestPhoneIDPlatinumResponse
#   requestPhoneIDPlatinumResult - Telesign::API::PhoneIDPlatinum
class RequestPhoneIDPlatinumResponse
  attr_accessor :requestPhoneIDPlatinumResult

  def initialize(requestPhoneIDPlatinumResult = nil)
    @requestPhoneIDPlatinumResult = requestPhoneIDPlatinumResult
  end
end

# {https://www.telesign.com/api/}RequestInformationQualityScore
#   customerID - SOAP::SOAPString
#   authenticationID - SOAP::SOAPString
#   countryCode - SOAP::SOAPString
#   phoneNumber - SOAP::SOAPString
#   nameType - SOAP::SOAPString
#   name - SOAP::SOAPString
#   street - SOAP::SOAPString
#   city - SOAP::SOAPString
#   state - SOAP::SOAPString
#   zip - SOAP::SOAPString
class RequestInformationQualityScore
  attr_accessor :customerID
  attr_accessor :authenticationID
  attr_accessor :countryCode
  attr_accessor :phoneNumber
  attr_accessor :nameType
  attr_accessor :name
  attr_accessor :street
  attr_accessor :city
  attr_accessor :state
  attr_accessor :zip

  def initialize(customerID = nil, authenticationID = nil, countryCode = nil, phoneNumber = nil, nameType = nil, name = nil, street = nil, city = nil, state = nil, zip = nil)
    @customerID = customerID
    @authenticationID = authenticationID
    @countryCode = countryCode
    @phoneNumber = phoneNumber
    @nameType = nameType
    @name = name
    @street = street
    @city = city
    @state = state
    @zip = zip
  end
end

# {https://www.telesign.com/api/}RequestInformationQualityScoreResponse
#   requestInformationQualityScoreResult - Telesign::API::InformationQualityScore
class RequestInformationQualityScoreResponse
  attr_accessor :requestInformationQualityScoreResult

  def initialize(requestInformationQualityScoreResult = nil)
    @requestInformationQualityScoreResult = requestInformationQualityScoreResult
  end
end

# {https://www.telesign.com/api/}RequestFraudAnalyzer
#   customerID - SOAP::SOAPString
#   authenticationID - SOAP::SOAPString
#   iPAddress - SOAP::SOAPString
#   country - SOAP::SOAPString
#   city - SOAP::SOAPString
#   region - SOAP::SOAPString
#   zip - SOAP::SOAPString
#   domain - SOAP::SOAPString
#   bin - SOAP::SOAPString
#   binName - SOAP::SOAPString
#   binPhone - SOAP::SOAPString
#   phoneNumber - SOAP::SOAPString
#   forwardedIP - SOAP::SOAPString
#   emailMD5 - SOAP::SOAPString
#   usernameMD5 - SOAP::SOAPString
#   passwordMD5 - SOAP::SOAPString
#   shipAddress - SOAP::SOAPString
#   shipCity - SOAP::SOAPString
#   shipRegion - SOAP::SOAPString
#   shipZip - SOAP::SOAPString
#   shipCountry - SOAP::SOAPString
#   sessionID - SOAP::SOAPString
#   userAgent - SOAP::SOAPString
#   browserLanguage - SOAP::SOAPString
class RequestFraudAnalyzer
  attr_accessor :customerID
  attr_accessor :authenticationID
  attr_accessor :iPAddress
  attr_accessor :country
  attr_accessor :city
  attr_accessor :region
  attr_accessor :zip
  attr_accessor :domain
  attr_accessor :bin
  attr_accessor :binName
  attr_accessor :binPhone
  attr_accessor :phoneNumber
  attr_accessor :forwardedIP
  attr_accessor :emailMD5
  attr_accessor :usernameMD5
  attr_accessor :passwordMD5
  attr_accessor :shipAddress
  attr_accessor :shipCity
  attr_accessor :shipRegion
  attr_accessor :shipZip
  attr_accessor :shipCountry
  attr_accessor :sessionID
  attr_accessor :userAgent
  attr_accessor :browserLanguage

  def initialize(customerID = nil, authenticationID = nil, iPAddress = nil, country = nil, city = nil, region = nil, zip = nil, domain = nil, bin = nil, binName = nil, binPhone = nil, phoneNumber = nil, forwardedIP = nil, emailMD5 = nil, usernameMD5 = nil, passwordMD5 = nil, shipAddress = nil, shipCity = nil, shipRegion = nil, shipZip = nil, shipCountry = nil, sessionID = nil, userAgent = nil, browserLanguage = nil)
    @customerID = customerID
    @authenticationID = authenticationID
    @iPAddress = iPAddress
    @country = country
    @city = city
    @region = region
    @zip = zip
    @domain = domain
    @bin = bin
    @binName = binName
    @binPhone = binPhone
    @phoneNumber = phoneNumber
    @forwardedIP = forwardedIP
    @emailMD5 = emailMD5
    @usernameMD5 = usernameMD5
    @passwordMD5 = passwordMD5
    @shipAddress = shipAddress
    @shipCity = shipCity
    @shipRegion = shipRegion
    @shipZip = shipZip
    @shipCountry = shipCountry
    @sessionID = sessionID
    @userAgent = userAgent
    @browserLanguage = browserLanguage
  end
end

# {https://www.telesign.com/api/}RequestFraudAnalyzerResponse
#   requestFraudAnalyzerResult - Telesign::API::FraudAnalyzer
class RequestFraudAnalyzerResponse
  attr_accessor :requestFraudAnalyzerResult

  def initialize(requestFraudAnalyzerResult = nil)
    @requestFraudAnalyzerResult = requestFraudAnalyzerResult
  end
end


end; end
