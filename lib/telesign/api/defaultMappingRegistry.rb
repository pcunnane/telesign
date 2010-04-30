require 'soap/mapping'

module Telesign; module API

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsApi = "https://www.telesign.com/api/"

  EncodedRegistry.register(
    :class => Telesign::API::Version,
    :schema_type => XSD::QName.new(NsApi, "Version"),
    :schema_element => [
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Number")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Telesign::API::SMS,
    :schema_type => XSD::QName.new(NsApi, "SMS"),
    :schema_element => [
      ["referenceID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ReferenceID")], [0, 1]],
      ["aPIError", ["Telesign::API::APIErrorResponse", XSD::QName.new(NsApi, "APIError")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Telesign::API::APIErrorResponse,
    :schema_type => XSD::QName.new(NsApi, "APIErrorResponse"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "Code")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Message")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Telesign::API::PhoneID,
    :schema_type => XSD::QName.new(NsApi, "PhoneID"),
    :schema_element => [
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CountryCode")], [0, 1]],
      ["originalPhoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsApi, "OriginalPhoneNumber")], [0, 1]],
      ["cleansedPhoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CleansedPhoneNumber")], [0, 1]],
      ["cleansedCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CleansedCode")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsApi, "City")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsApi, "State")], [0, 1]],
      ["zip", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Zip")], [0, 1]],
      ["primaryMetroCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PrimaryMetroCode")], [0, 1]],
      ["county", ["SOAP::SOAPString", XSD::QName.new(NsApi, "County")], [0, 1]],
      ["timeZone", ["SOAP::SOAPString", XSD::QName.new(NsApi, "TimeZone")], [0, 1]],
      ["timeZoneUTCMin", ["SOAP::SOAPString", XSD::QName.new(NsApi, "TimeZoneUTCMin")], [0, 1]],
      ["timeZoneUTCMax", ["SOAP::SOAPString", XSD::QName.new(NsApi, "TimeZoneUTCMax")], [0, 1]],
      ["latitude", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Latitude")], [0, 1]],
      ["longitude", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Longitude")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Country")], [0, 1]],
      ["countryName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CountryName")], [0, 1]],
      ["minNumLength", ["SOAP::SOAPString", XSD::QName.new(NsApi, "MinNumLength")], [0, 1]],
      ["maxNumLength", ["SOAP::SOAPString", XSD::QName.new(NsApi, "MaxNumLength")], [0, 1]],
      ["referenceID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ReferenceID")], [0, 1]],
      ["typeofPhone", ["SOAP::SOAPString", XSD::QName.new(NsApi, "TypeofPhone")], [0, 1]],
      ["aPIError", ["Telesign::API::APIErrorResponse", XSD::QName.new(NsApi, "APIError")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Telesign::API::STATUS,
    :schema_type => XSD::QName.new(NsApi, "STATUS"),
    :schema_element => [
      ["statusCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "StatusCode")], [0, 1]],
      ["verificationCodeValid", ["SOAP::SOAPString", XSD::QName.new(NsApi, "VerificationCodeValid")], [0, 1]],
      ["additional", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Additional")], [0, 1]],
      ["keyPress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "KeyPress")], [0, 1]],
      ["aPIError", ["Telesign::API::APIErrorResponse", XSD::QName.new(NsApi, "APIError")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Telesign::API::Call,
    :schema_type => XSD::QName.new(NsApi, "Call"),
    :schema_element => [
      ["referenceID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ReferenceID")], [0, 1]],
      ["aPIError", ["Telesign::API::APIErrorResponse", XSD::QName.new(NsApi, "APIError")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Telesign::API::PhoneIDPlatinum,
    :schema_type => XSD::QName.new(NsApi, "PhoneIDPlatinum"),
    :schema_element => [
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CountryCode")], [0, 1]],
      ["originalPhoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsApi, "OriginalPhoneNumber")], [0, 1]],
      ["cleansedPhoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CleansedPhoneNumber")], [0, 1]],
      ["cleansedCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CleansedCode")], [0, 1]],
      ["phoneCity", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneCity")], [0, 1]],
      ["phoneState", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneState")], [0, 1]],
      ["phoneZip", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneZip")], [0, 1]],
      ["primaryMetroCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PrimaryMetroCode")], [0, 1]],
      ["phoneCounty", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneCounty")], [0, 1]],
      ["phoneLatitude", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneLatitude")], [0, 1]],
      ["phoneLongitude", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneLongitude")], [0, 1]],
      ["phoneCountry", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneCountry")], [0, 1]],
      ["phoneCountryName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneCountryName")], [0, 1]],
      ["minNumLength", ["SOAP::SOAPString", XSD::QName.new(NsApi, "MinNumLength")], [0, 1]],
      ["maxNumLength", ["SOAP::SOAPString", XSD::QName.new(NsApi, "MaxNumLength")], [0, 1]],
      ["referenceID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ReferenceID")], [0, 1]],
      ["typeofPhone", ["SOAP::SOAPString", XSD::QName.new(NsApi, "TypeofPhone")], [0, 1]],
      ["newAreaCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "NewAreaCode")], [0, 1]],
      ["dialable", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Dialable")], [0, 1]],
      ["pointCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PointCode")], [0, 1]],
      ["nameType", ["SOAP::SOAPString", XSD::QName.new(NsApi, "NameType")], [0, 1]],
      ["name1", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name1")], [0, 1]],
      ["name2", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name2")], [0, 1]],
      ["name3", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name3")], [0, 1]],
      ["addressStatus", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressStatus")], [0, 1]],
      ["addressType", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressType")], [0, 1]],
      ["buildingName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "BuildingName")], [0, 1]],
      ["address1Number", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Address1Number")], [0, 1]],
      ["streetPreDirection", ["SOAP::SOAPString", XSD::QName.new(NsApi, "StreetPreDirection")], [0, 1]],
      ["streetName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "StreetName")], [0, 1]],
      ["streetType", ["SOAP::SOAPString", XSD::QName.new(NsApi, "StreetType")], [0, 1]],
      ["streetPostDirection", ["SOAP::SOAPString", XSD::QName.new(NsApi, "StreetPostDirection")], [0, 1]],
      ["address2Number", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Address2Number")], [0, 1]],
      ["address2Type", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Address2Type")], [0, 1]],
      ["addressCity", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressCity")], [0, 1]],
      ["addressState", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressState")], [0, 1]],
      ["addressZip", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressZip")], [0, 1]],
      ["addressZipPlus4", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressZipPlus4")], [0, 1]],
      ["addressCountryCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressCountryCode")], [0, 1]],
      ["addressCountryName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressCountryName")], [0, 1]],
      ["streetNameAccent", ["SOAP::SOAPString", XSD::QName.new(NsApi, "StreetNameAccent")], [0, 1]],
      ["addressCityAccent", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressCityAccent")], [0, 1]],
      ["addressStateAccent", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressStateAccent")], [0, 1]],
      ["fIPSCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "FIPSCode")], [0, 1]],
      ["deliveryPointCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "DeliveryPointCode")], [0, 1]],
      ["carrierRoute", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CarrierRoute")], [0, 1]],
      ["routeTypeDesc", ["SOAP::SOAPString", XSD::QName.new(NsApi, "RouteTypeDesc")], [0, 1]],
      ["routeTypeNum", ["SOAP::SOAPString", XSD::QName.new(NsApi, "RouteTypeNum")], [0, 1]],
      ["addressTimeZoneCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressTimeZoneCode")], [0, 1]],
      ["addressTimeZoneUTCMin", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressTimeZoneUTCMin")], [0, 1]],
      ["addressTimeZoneUTCMax", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressTimeZoneUTCMax")], [0, 1]],
      ["dSTObserved", ["SOAP::SOAPString", XSD::QName.new(NsApi, "DSTObserved")], [0, 1]],
      ["spatiallyInconsistent", ["SOAP::SOAPString", XSD::QName.new(NsApi, "SpatiallyInconsistent")], [0, 1]],
      ["uniqueSource", ["SOAP::SOAPString", XSD::QName.new(NsApi, "UniqueSource")], [0, 1]],
      ["aPIError", ["Telesign::API::APIErrorResponse", XSD::QName.new(NsApi, "APIError")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Telesign::API::InformationQualityScore,
    :schema_type => XSD::QName.new(NsApi, "InformationQualityScore"),
    :schema_element => [
      ["referenceID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ReferenceID")], [0, 1]],
      ["score", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Score")], [0, 1]],
      ["phoneVerify", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneVerify")], [0, 1]],
      ["listingType", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListingType")], [0, 1]],
      ["validAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ValidAddress")], [0, 1]],
      ["validPhoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ValidPhoneNumber")], [0, 1]],
      ["inService6M", ["SOAP::SOAPString", XSD::QName.new(NsApi, "InService6M")], [0, 1]],
      ["onDoNotCall", ["SOAP::SOAPString", XSD::QName.new(NsApi, "OnDoNotCall")], [0, 1]],
      ["nearAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "NearAddress")], [0, 1]],
      ["recentChange", ["SOAP::SOAPString", XSD::QName.new(NsApi, "RecentChange")], [0, 1]],
      ["addressType", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressType")], [0, 1]],
      ["basedOnPhoneNumber", ["Telesign::API::BasedOnPhoneNumberResponse", XSD::QName.new(NsApi, "BasedOnPhoneNumber")], [0, 1]],
      ["basedOnAddress", ["Telesign::API::BasedOnAddressResponse", XSD::QName.new(NsApi, "BasedOnAddress")], [0, 1]],
      ["standardizedAddress", ["Telesign::API::StandardizedAddressResponse", XSD::QName.new(NsApi, "StandardizedAddress")], [0, 1]],
      ["aPIError", ["Telesign::API::APIErrorResponse", XSD::QName.new(NsApi, "APIError")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Telesign::API::BasedOnPhoneNumberResponse,
    :schema_type => XSD::QName.new(NsApi, "BasedOnPhoneNumberResponse"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]],
      ["street", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Street")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsApi, "City")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsApi, "State")], [0, 1]],
      ["zip", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Zip")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Telesign::API::BasedOnAddressResponse,
    :schema_type => XSD::QName.new(NsApi, "BasedOnAddressResponse"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]],
      ["street", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Street")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsApi, "City")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsApi, "State")], [0, 1]],
      ["zip", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Zip")], [0, 1]],
      ["phoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneNumber")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Telesign::API::StandardizedAddressResponse,
    :schema_type => XSD::QName.new(NsApi, "StandardizedAddressResponse"),
    :schema_element => [
      ["line1", "SOAP::SOAPString", [0, 1]],
      ["line2", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Telesign::API::FraudAnalyzer,
    :schema_type => XSD::QName.new(NsApi, "FraudAnalyzer"),
    :schema_element => [
      ["referenceID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ReferenceID")], [0, 1]],
      ["countryMatch", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CountryMatch")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CountryCode")], [0, 1]],
      ["highRiskCountry", ["SOAP::SOAPString", XSD::QName.new(NsApi, "HighRiskCountry")], [0, 1]],
      ["iPBillingDistance", ["SOAP::SOAPString", XSD::QName.new(NsApi, "IPBillingDistance")], [0, 1]],
      ["iPRegion", ["SOAP::SOAPString", XSD::QName.new(NsApi, "IPRegion")], [0, 1]],
      ["iPCity", ["SOAP::SOAPString", XSD::QName.new(NsApi, "IPCity")], [0, 1]],
      ["iPLatitude", ["SOAP::SOAPString", XSD::QName.new(NsApi, "IPLatitude")], [0, 1]],
      ["iPLongitude", ["SOAP::SOAPString", XSD::QName.new(NsApi, "IPLongitude")], [0, 1]],
      ["iPISP", ["SOAP::SOAPString", XSD::QName.new(NsApi, "IPISP")], [0, 1]],
      ["iPOrg", ["SOAP::SOAPString", XSD::QName.new(NsApi, "IPOrg")], [0, 1]],
      ["anonymousProxy", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AnonymousProxy")], [0, 1]],
      ["proxyScore", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ProxyScore")], [0, 1]],
      ["isTransparentProxy", ["SOAP::SOAPString", XSD::QName.new(NsApi, "IsTransparentProxy")], [0, 1]],
      ["freeEmail", ["SOAP::SOAPString", XSD::QName.new(NsApi, "FreeEmail")], [0, 1]],
      ["highRiskEmail", ["SOAP::SOAPString", XSD::QName.new(NsApi, "HighRiskEmail")], [0, 1]],
      ["highRiskPassword", ["SOAP::SOAPString", XSD::QName.new(NsApi, "HighRiskPassword")], [0, 1]],
      ["highRiskUsername", ["SOAP::SOAPString", XSD::QName.new(NsApi, "HighRiskUsername")], [0, 1]],
      ["binMatch", ["SOAP::SOAPString", XSD::QName.new(NsApi, "BinMatch")], [0, 1]],
      ["binCountry", ["SOAP::SOAPString", XSD::QName.new(NsApi, "BinCountry")], [0, 1]],
      ["binNameMatch", ["SOAP::SOAPString", XSD::QName.new(NsApi, "BinNameMatch")], [0, 1]],
      ["binName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "BinName")], [0, 1]],
      ["binPhoneMatch", ["SOAP::SOAPString", XSD::QName.new(NsApi, "BinPhoneMatch")], [0, 1]],
      ["binPhone", ["SOAP::SOAPString", XSD::QName.new(NsApi, "BinPhone")], [0, 1]],
      ["phoneNumberInBillingLocation", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneNumberInBillingLocation")], [0, 1]],
      ["shipForward", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ShipForward")], [0, 1]],
      ["cityZipMatch", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CityZipMatch")], [0, 1]],
      ["shipCityZipMatch", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ShipCityZipMatch")], [0, 1]],
      ["fraudScore", ["SOAP::SOAPString", XSD::QName.new(NsApi, "FraudScore")], [0, 1]],
      ["fraudScoreDescription", ["SOAP::SOAPString", XSD::QName.new(NsApi, "FraudScoreDescription")], [0, 1]],
      ["aPIError", ["Telesign::API::APIErrorResponse", XSD::QName.new(NsApi, "APIError")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::Version,
    :schema_type => XSD::QName.new(NsApi, "Version"),
    :schema_element => [
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Number")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::SMS,
    :schema_type => XSD::QName.new(NsApi, "SMS"),
    :schema_element => [
      ["referenceID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ReferenceID")], [0, 1]],
      ["aPIError", ["Telesign::API::APIErrorResponse", XSD::QName.new(NsApi, "APIError")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::APIErrorResponse,
    :schema_type => XSD::QName.new(NsApi, "APIErrorResponse"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "Code")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::PhoneID,
    :schema_type => XSD::QName.new(NsApi, "PhoneID"),
    :schema_element => [
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CountryCode")], [0, 1]],
      ["originalPhoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsApi, "OriginalPhoneNumber")], [0, 1]],
      ["cleansedPhoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CleansedPhoneNumber")], [0, 1]],
      ["cleansedCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CleansedCode")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsApi, "City")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsApi, "State")], [0, 1]],
      ["zip", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Zip")], [0, 1]],
      ["primaryMetroCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PrimaryMetroCode")], [0, 1]],
      ["county", ["SOAP::SOAPString", XSD::QName.new(NsApi, "County")], [0, 1]],
      ["timeZone", ["SOAP::SOAPString", XSD::QName.new(NsApi, "TimeZone")], [0, 1]],
      ["timeZoneUTCMin", ["SOAP::SOAPString", XSD::QName.new(NsApi, "TimeZoneUTCMin")], [0, 1]],
      ["timeZoneUTCMax", ["SOAP::SOAPString", XSD::QName.new(NsApi, "TimeZoneUTCMax")], [0, 1]],
      ["latitude", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Latitude")], [0, 1]],
      ["longitude", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Longitude")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Country")], [0, 1]],
      ["countryName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CountryName")], [0, 1]],
      ["minNumLength", ["SOAP::SOAPString", XSD::QName.new(NsApi, "MinNumLength")], [0, 1]],
      ["maxNumLength", ["SOAP::SOAPString", XSD::QName.new(NsApi, "MaxNumLength")], [0, 1]],
      ["referenceID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ReferenceID")], [0, 1]],
      ["typeofPhone", ["SOAP::SOAPString", XSD::QName.new(NsApi, "TypeofPhone")], [0, 1]],
      ["aPIError", ["Telesign::API::APIErrorResponse", XSD::QName.new(NsApi, "APIError")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::STATUS,
    :schema_type => XSD::QName.new(NsApi, "STATUS"),
    :schema_element => [
      ["statusCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "StatusCode")], [0, 1]],
      ["verificationCodeValid", ["SOAP::SOAPString", XSD::QName.new(NsApi, "VerificationCodeValid")], [0, 1]],
      ["additional", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Additional")], [0, 1]],
      ["keyPress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "KeyPress")], [0, 1]],
      ["aPIError", ["Telesign::API::APIErrorResponse", XSD::QName.new(NsApi, "APIError")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::Call,
    :schema_type => XSD::QName.new(NsApi, "Call"),
    :schema_element => [
      ["referenceID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ReferenceID")], [0, 1]],
      ["aPIError", ["Telesign::API::APIErrorResponse", XSD::QName.new(NsApi, "APIError")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::PhoneIDPlatinum,
    :schema_type => XSD::QName.new(NsApi, "PhoneIDPlatinum"),
    :schema_element => [
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CountryCode")], [0, 1]],
      ["originalPhoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsApi, "OriginalPhoneNumber")], [0, 1]],
      ["cleansedPhoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CleansedPhoneNumber")], [0, 1]],
      ["cleansedCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CleansedCode")], [0, 1]],
      ["phoneCity", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneCity")], [0, 1]],
      ["phoneState", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneState")], [0, 1]],
      ["phoneZip", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneZip")], [0, 1]],
      ["primaryMetroCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PrimaryMetroCode")], [0, 1]],
      ["phoneCounty", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneCounty")], [0, 1]],
      ["phoneLatitude", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneLatitude")], [0, 1]],
      ["phoneLongitude", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneLongitude")], [0, 1]],
      ["phoneCountry", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneCountry")], [0, 1]],
      ["phoneCountryName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneCountryName")], [0, 1]],
      ["minNumLength", ["SOAP::SOAPString", XSD::QName.new(NsApi, "MinNumLength")], [0, 1]],
      ["maxNumLength", ["SOAP::SOAPString", XSD::QName.new(NsApi, "MaxNumLength")], [0, 1]],
      ["referenceID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ReferenceID")], [0, 1]],
      ["typeofPhone", ["SOAP::SOAPString", XSD::QName.new(NsApi, "TypeofPhone")], [0, 1]],
      ["newAreaCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "NewAreaCode")], [0, 1]],
      ["dialable", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Dialable")], [0, 1]],
      ["pointCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PointCode")], [0, 1]],
      ["nameType", ["SOAP::SOAPString", XSD::QName.new(NsApi, "NameType")], [0, 1]],
      ["name1", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name1")], [0, 1]],
      ["name2", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name2")], [0, 1]],
      ["name3", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name3")], [0, 1]],
      ["addressStatus", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressStatus")], [0, 1]],
      ["addressType", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressType")], [0, 1]],
      ["buildingName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "BuildingName")], [0, 1]],
      ["address1Number", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Address1Number")], [0, 1]],
      ["streetPreDirection", ["SOAP::SOAPString", XSD::QName.new(NsApi, "StreetPreDirection")], [0, 1]],
      ["streetName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "StreetName")], [0, 1]],
      ["streetType", ["SOAP::SOAPString", XSD::QName.new(NsApi, "StreetType")], [0, 1]],
      ["streetPostDirection", ["SOAP::SOAPString", XSD::QName.new(NsApi, "StreetPostDirection")], [0, 1]],
      ["address2Number", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Address2Number")], [0, 1]],
      ["address2Type", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Address2Type")], [0, 1]],
      ["addressCity", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressCity")], [0, 1]],
      ["addressState", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressState")], [0, 1]],
      ["addressZip", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressZip")], [0, 1]],
      ["addressZipPlus4", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressZipPlus4")], [0, 1]],
      ["addressCountryCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressCountryCode")], [0, 1]],
      ["addressCountryName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressCountryName")], [0, 1]],
      ["streetNameAccent", ["SOAP::SOAPString", XSD::QName.new(NsApi, "StreetNameAccent")], [0, 1]],
      ["addressCityAccent", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressCityAccent")], [0, 1]],
      ["addressStateAccent", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressStateAccent")], [0, 1]],
      ["fIPSCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "FIPSCode")], [0, 1]],
      ["deliveryPointCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "DeliveryPointCode")], [0, 1]],
      ["carrierRoute", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CarrierRoute")], [0, 1]],
      ["routeTypeDesc", ["SOAP::SOAPString", XSD::QName.new(NsApi, "RouteTypeDesc")], [0, 1]],
      ["routeTypeNum", ["SOAP::SOAPString", XSD::QName.new(NsApi, "RouteTypeNum")], [0, 1]],
      ["addressTimeZoneCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressTimeZoneCode")], [0, 1]],
      ["addressTimeZoneUTCMin", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressTimeZoneUTCMin")], [0, 1]],
      ["addressTimeZoneUTCMax", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressTimeZoneUTCMax")], [0, 1]],
      ["dSTObserved", ["SOAP::SOAPString", XSD::QName.new(NsApi, "DSTObserved")], [0, 1]],
      ["spatiallyInconsistent", ["SOAP::SOAPString", XSD::QName.new(NsApi, "SpatiallyInconsistent")], [0, 1]],
      ["uniqueSource", ["SOAP::SOAPString", XSD::QName.new(NsApi, "UniqueSource")], [0, 1]],
      ["aPIError", ["Telesign::API::APIErrorResponse", XSD::QName.new(NsApi, "APIError")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::InformationQualityScore,
    :schema_type => XSD::QName.new(NsApi, "InformationQualityScore"),
    :schema_element => [
      ["referenceID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ReferenceID")], [0, 1]],
      ["score", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Score")], [0, 1]],
      ["phoneVerify", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneVerify")], [0, 1]],
      ["listingType", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListingType")], [0, 1]],
      ["validAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ValidAddress")], [0, 1]],
      ["validPhoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ValidPhoneNumber")], [0, 1]],
      ["inService6M", ["SOAP::SOAPString", XSD::QName.new(NsApi, "InService6M")], [0, 1]],
      ["onDoNotCall", ["SOAP::SOAPString", XSD::QName.new(NsApi, "OnDoNotCall")], [0, 1]],
      ["nearAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "NearAddress")], [0, 1]],
      ["recentChange", ["SOAP::SOAPString", XSD::QName.new(NsApi, "RecentChange")], [0, 1]],
      ["addressType", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AddressType")], [0, 1]],
      ["basedOnPhoneNumber", ["Telesign::API::BasedOnPhoneNumberResponse", XSD::QName.new(NsApi, "BasedOnPhoneNumber")], [0, 1]],
      ["basedOnAddress", ["Telesign::API::BasedOnAddressResponse", XSD::QName.new(NsApi, "BasedOnAddress")], [0, 1]],
      ["standardizedAddress", ["Telesign::API::StandardizedAddressResponse", XSD::QName.new(NsApi, "StandardizedAddress")], [0, 1]],
      ["aPIError", ["Telesign::API::APIErrorResponse", XSD::QName.new(NsApi, "APIError")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::BasedOnPhoneNumberResponse,
    :schema_type => XSD::QName.new(NsApi, "BasedOnPhoneNumberResponse"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]],
      ["street", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Street")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsApi, "City")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsApi, "State")], [0, 1]],
      ["zip", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Zip")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::BasedOnAddressResponse,
    :schema_type => XSD::QName.new(NsApi, "BasedOnAddressResponse"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]],
      ["street", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Street")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsApi, "City")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsApi, "State")], [0, 1]],
      ["zip", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Zip")], [0, 1]],
      ["phoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneNumber")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::StandardizedAddressResponse,
    :schema_type => XSD::QName.new(NsApi, "StandardizedAddressResponse"),
    :schema_element => [
      ["line1", "SOAP::SOAPString", [0, 1]],
      ["line2", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::FraudAnalyzer,
    :schema_type => XSD::QName.new(NsApi, "FraudAnalyzer"),
    :schema_element => [
      ["referenceID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ReferenceID")], [0, 1]],
      ["countryMatch", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CountryMatch")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CountryCode")], [0, 1]],
      ["highRiskCountry", ["SOAP::SOAPString", XSD::QName.new(NsApi, "HighRiskCountry")], [0, 1]],
      ["iPBillingDistance", ["SOAP::SOAPString", XSD::QName.new(NsApi, "IPBillingDistance")], [0, 1]],
      ["iPRegion", ["SOAP::SOAPString", XSD::QName.new(NsApi, "IPRegion")], [0, 1]],
      ["iPCity", ["SOAP::SOAPString", XSD::QName.new(NsApi, "IPCity")], [0, 1]],
      ["iPLatitude", ["SOAP::SOAPString", XSD::QName.new(NsApi, "IPLatitude")], [0, 1]],
      ["iPLongitude", ["SOAP::SOAPString", XSD::QName.new(NsApi, "IPLongitude")], [0, 1]],
      ["iPISP", ["SOAP::SOAPString", XSD::QName.new(NsApi, "IPISP")], [0, 1]],
      ["iPOrg", ["SOAP::SOAPString", XSD::QName.new(NsApi, "IPOrg")], [0, 1]],
      ["anonymousProxy", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AnonymousProxy")], [0, 1]],
      ["proxyScore", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ProxyScore")], [0, 1]],
      ["isTransparentProxy", ["SOAP::SOAPString", XSD::QName.new(NsApi, "IsTransparentProxy")], [0, 1]],
      ["freeEmail", ["SOAP::SOAPString", XSD::QName.new(NsApi, "FreeEmail")], [0, 1]],
      ["highRiskEmail", ["SOAP::SOAPString", XSD::QName.new(NsApi, "HighRiskEmail")], [0, 1]],
      ["highRiskPassword", ["SOAP::SOAPString", XSD::QName.new(NsApi, "HighRiskPassword")], [0, 1]],
      ["highRiskUsername", ["SOAP::SOAPString", XSD::QName.new(NsApi, "HighRiskUsername")], [0, 1]],
      ["binMatch", ["SOAP::SOAPString", XSD::QName.new(NsApi, "BinMatch")], [0, 1]],
      ["binCountry", ["SOAP::SOAPString", XSD::QName.new(NsApi, "BinCountry")], [0, 1]],
      ["binNameMatch", ["SOAP::SOAPString", XSD::QName.new(NsApi, "BinNameMatch")], [0, 1]],
      ["binName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "BinName")], [0, 1]],
      ["binPhoneMatch", ["SOAP::SOAPString", XSD::QName.new(NsApi, "BinPhoneMatch")], [0, 1]],
      ["binPhone", ["SOAP::SOAPString", XSD::QName.new(NsApi, "BinPhone")], [0, 1]],
      ["phoneNumberInBillingLocation", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneNumberInBillingLocation")], [0, 1]],
      ["shipForward", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ShipForward")], [0, 1]],
      ["cityZipMatch", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CityZipMatch")], [0, 1]],
      ["shipCityZipMatch", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ShipCityZipMatch")], [0, 1]],
      ["fraudScore", ["SOAP::SOAPString", XSD::QName.new(NsApi, "FraudScore")], [0, 1]],
      ["fraudScoreDescription", ["SOAP::SOAPString", XSD::QName.new(NsApi, "FraudScoreDescription")], [0, 1]],
      ["aPIError", ["Telesign::API::APIErrorResponse", XSD::QName.new(NsApi, "APIError")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::RequestAPIversion,
    :schema_name => XSD::QName.new(NsApi, "RequestAPIversion"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Telesign::API::RequestAPIversionResponse,
    :schema_name => XSD::QName.new(NsApi, "RequestAPIversionResponse"),
    :schema_element => [
      ["requestAPIversionResult", ["Telesign::API::Version", XSD::QName.new(NsApi, "RequestAPIversionResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::RequestSMS,
    :schema_name => XSD::QName.new(NsApi, "RequestSMS"),
    :schema_element => [
      ["customerID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CustomerID")], [0, 1]],
      ["authenticationID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AuthenticationID")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CountryCode")], [0, 1]],
      ["phoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneNumber")], [0, 1]],
      ["language", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Language")], [0, 1]],
      ["verificationCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "VerificationCode")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::RequestSMSResponse,
    :schema_name => XSD::QName.new(NsApi, "RequestSMSResponse"),
    :schema_element => [
      ["requestSMSResult", ["Telesign::API::SMS", XSD::QName.new(NsApi, "RequestSMSResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::RequestPhoneID,
    :schema_name => XSD::QName.new(NsApi, "RequestPhoneID"),
    :schema_element => [
      ["customerID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CustomerID")], [0, 1]],
      ["authenticationID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AuthenticationID")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CountryCode")], [0, 1]],
      ["phoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneNumber")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::RequestPhoneIDResponse,
    :schema_name => XSD::QName.new(NsApi, "RequestPhoneIDResponse"),
    :schema_element => [
      ["requestPhoneIDResult", ["Telesign::API::PhoneID", XSD::QName.new(NsApi, "RequestPhoneIDResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::RequestSTATUS,
    :schema_name => XSD::QName.new(NsApi, "RequestSTATUS"),
    :schema_element => [
      ["customerID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CustomerID")], [0, 1]],
      ["authenticationID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AuthenticationID")], [0, 1]],
      ["referenceID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ReferenceID")], [0, 1]],
      ["verificationCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "VerificationCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::RequestSTATUSResponse,
    :schema_name => XSD::QName.new(NsApi, "RequestSTATUSResponse"),
    :schema_element => [
      ["requestSTATUSResult", ["Telesign::API::STATUS", XSD::QName.new(NsApi, "RequestSTATUSResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::RequestCALL,
    :schema_name => XSD::QName.new(NsApi, "RequestCALL"),
    :schema_element => [
      ["customerID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CustomerID")], [0, 1]],
      ["authenticationID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AuthenticationID")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CountryCode")], [0, 1]],
      ["phoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneNumber")], [0, 1]],
      ["language", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Language")], [0, 1]],
      ["verificationCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "VerificationCode")], [0, 1]],
      ["priority", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Priority")], [0, 1]],
      ["delayTime", ["SOAP::SOAPString", XSD::QName.new(NsApi, "DelayTime")], [0, 1]],
      ["redialCount", ["SOAP::SOAPString", XSD::QName.new(NsApi, "RedialCount")], [0, 1]],
      ["extensionContent", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ExtensionContent")], [0, 1]],
      ["extensionType", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ExtensionType")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Message")], [0, 1]],
      ["callType", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CallType")], [0, 1]],
      ["callerID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CallerID")], [0, 1]],
      ["project", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Project")], [0, 1]],
      ["additional", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Additional")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::RequestCALLResponse,
    :schema_name => XSD::QName.new(NsApi, "RequestCALLResponse"),
    :schema_element => [
      ["requestCALLResult", ["Telesign::API::Call", XSD::QName.new(NsApi, "RequestCALLResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::RequestPhoneIDPlatinum,
    :schema_name => XSD::QName.new(NsApi, "RequestPhoneIDPlatinum"),
    :schema_element => [
      ["customerID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CustomerID")], [0, 1]],
      ["authenticationID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AuthenticationID")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CountryCode")], [0, 1]],
      ["phoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneNumber")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::RequestPhoneIDPlatinumResponse,
    :schema_name => XSD::QName.new(NsApi, "RequestPhoneIDPlatinumResponse"),
    :schema_element => [
      ["requestPhoneIDPlatinumResult", ["Telesign::API::PhoneIDPlatinum", XSD::QName.new(NsApi, "RequestPhoneIDPlatinumResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::RequestInformationQualityScore,
    :schema_name => XSD::QName.new(NsApi, "RequestInformationQualityScore"),
    :schema_element => [
      ["customerID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CustomerID")], [0, 1]],
      ["authenticationID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AuthenticationID")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CountryCode")], [0, 1]],
      ["phoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneNumber")], [0, 1]],
      ["nameType", ["SOAP::SOAPString", XSD::QName.new(NsApi, "NameType")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]],
      ["street", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Street")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsApi, "City")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsApi, "State")], [0, 1]],
      ["zip", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Zip")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::RequestInformationQualityScoreResponse,
    :schema_name => XSD::QName.new(NsApi, "RequestInformationQualityScoreResponse"),
    :schema_element => [
      ["requestInformationQualityScoreResult", ["Telesign::API::InformationQualityScore", XSD::QName.new(NsApi, "RequestInformationQualityScoreResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::RequestFraudAnalyzer,
    :schema_name => XSD::QName.new(NsApi, "RequestFraudAnalyzer"),
    :schema_element => [
      ["customerID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CustomerID")], [0, 1]],
      ["authenticationID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "AuthenticationID")], [0, 1]],
      ["iPAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "IPAddress")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Country")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsApi, "City")], [0, 1]],
      ["region", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Region")], [0, 1]],
      ["zip", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Zip")], [0, 1]],
      ["domain", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Domain")], [0, 1]],
      ["bin", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Bin")], [0, 1]],
      ["binName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "BinName")], [0, 1]],
      ["binPhone", ["SOAP::SOAPString", XSD::QName.new(NsApi, "BinPhone")], [0, 1]],
      ["phoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PhoneNumber")], [0, 1]],
      ["forwardedIP", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ForwardedIP")], [0, 1]],
      ["emailMD5", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailMD5")], [0, 1]],
      ["usernameMD5", ["SOAP::SOAPString", XSD::QName.new(NsApi, "UsernameMD5")], [0, 1]],
      ["passwordMD5", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PasswordMD5")], [0, 1]],
      ["shipAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ShipAddress")], [0, 1]],
      ["shipCity", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ShipCity")], [0, 1]],
      ["shipRegion", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ShipRegion")], [0, 1]],
      ["shipZip", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ShipZip")], [0, 1]],
      ["shipCountry", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ShipCountry")], [0, 1]],
      ["sessionID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "SessionID")], [0, 1]],
      ["userAgent", ["SOAP::SOAPString", XSD::QName.new(NsApi, "UserAgent")], [0, 1]],
      ["browserLanguage", ["SOAP::SOAPString", XSD::QName.new(NsApi, "BrowserLanguage")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Telesign::API::RequestFraudAnalyzerResponse,
    :schema_name => XSD::QName.new(NsApi, "RequestFraudAnalyzerResponse"),
    :schema_element => [
      ["requestFraudAnalyzerResult", ["Telesign::API::FraudAnalyzer", XSD::QName.new(NsApi, "RequestFraudAnalyzerResult")], [0, 1]]
    ]
  )
end

end; end
