require 'soap/rpc/driver'

module Telesign::API

class TelesignAPISoap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://api.telesign.com/1.x/soap.asmx"

  Methods = [
    [ "https://www.telesign.com/api/RequestAPIversion",
      "requestAPIversion",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://www.telesign.com/api/", "RequestAPIversion"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://www.telesign.com/api/", "RequestAPIversionResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.telesign.com/api/RequestSMS",
      "requestSMS",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://www.telesign.com/api/", "RequestSMS"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://www.telesign.com/api/", "RequestSMSResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.telesign.com/api/RequestPhoneID",
      "requestPhoneID",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://www.telesign.com/api/", "RequestPhoneID"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://www.telesign.com/api/", "RequestPhoneIDResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.telesign.com/api/RequestSTATUS",
      "requestSTATUS",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://www.telesign.com/api/", "RequestSTATUS"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://www.telesign.com/api/", "RequestSTATUSResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.telesign.com/api/RequestCALL",
      "requestCALL",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://www.telesign.com/api/", "RequestCALL"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://www.telesign.com/api/", "RequestCALLResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.telesign.com/api/RequestPhoneIDPlatinum",
      "requestPhoneIDPlatinum",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://www.telesign.com/api/", "RequestPhoneIDPlatinum"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://www.telesign.com/api/", "RequestPhoneIDPlatinumResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.telesign.com/api/RequestInformationQualityScore",
      "requestInformationQualityScore",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://www.telesign.com/api/", "RequestInformationQualityScore"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://www.telesign.com/api/", "RequestInformationQualityScoreResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.telesign.com/api/RequestFraudAnalyzer",
      "requestFraudAnalyzer",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://www.telesign.com/api/", "RequestFraudAnalyzer"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://www.telesign.com/api/", "RequestFraudAnalyzerResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end


end
