Gem::Specification.new do |s|
  s.name = 'usps_address_verifier'
  s.version = '0.0.1'
  s.add_runtime_dependency 'httparty', ['= 0.13.7']
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.date = '2016-02-27'
  s.summary = 'USPS Address Verifier'
  s.description = 'A wrapper around the address verification endpoint for the USPS Web Tools API'
  s.authors = ['Matthew Jesuele']
  s.email = 'matt@yoshirt.com'
  s.files = ['lib/usps_address_verifier.rb']
  s.license = 'MIT'
end
