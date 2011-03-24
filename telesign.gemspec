Gem::Specification.new do |s|
  s.name = %q{telesign}
  s.version = "0.0.1"
  s.has_rdoc = false
  s.required_ruby_version = ">= 1.9.2"
  s.platform = "ruby"
  s.require_paths = ["lib"]
  s.required_rubygems_version = ">= 0"
  s.authors = ["pcunnane"]
  s.extra_rdoc_files = [
    "README.markdown"
  ]  
  s.files = Dir['lib/**/*.rb']
  s.autorequire = 'telesign'
end