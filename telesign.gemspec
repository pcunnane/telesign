Gem::Specification.new do |s|
  s.name = %q{telesign}
  s.version = "0.0.1"
  s.summary = "A Telesign Library"
  s.has_rdoc = false
  s.required_ruby_version = ">= 1.9.2"
  s.platform = "ruby"
  s.require_paths = ["lib", "lib/telesign", "lib/telesign/call"]
  s.required_rubygems_version = ">= 0"
  s.authors = ["pcunnane"]
  s.extra_rdoc_files = [
    "README.markdown"
  ]  
  s.files = [
    "MIT-LICENSE",
    "lib/telesign/telesign.rb",
    "lib/telesign/api/default.rb",
    "lib/telesign/api/defaultDriver.rb",
    "lib/telesign/api/defaultMappingRegistry.rb",
    "lib/telesign/call/request.rb",
    "lib/telesign/call/response.rb",
    "lib/telesign/lib/country.rb",
    "lib/telesign/lib/exceptions.rb",
    "lib/telesign/lib/language.rb",
    "lib/telesign/lib/phone_type.rb",
    "lib/telesign/phone_id/request.rb",
    "lib/telesign/phone_id/response.rb",
    "lib/telesign/phone_verification/request.rb",
    "lib/telesign/phone_verification/response.rb",
    "lib/telesign/sms/request.rb",
    "lib/telesign/sms/response.rb",
    "lib/telesign/status/request.rb",
    "lib/telesign/status/response.rb",
    "lib/telesign/api_request.rb",
    "lib/telesign/api_response.rb",
    "lib/telesign/phone.rb"            
  ]
  s.autorequire = 'telesign'
  
  s.add_dependency("soap4r")
end