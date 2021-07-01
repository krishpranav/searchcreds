lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'searchcreds/version'

Gem::Specification.new do |spec|
    spec.name               = "searchcreds"
    spec.version            = Searchcreds::VERSION
    spec.authors            = ["Krishpranav"]
    spec.email              = ["krisna.pranav@gmail.com"]

    spec.summary       = %q{Find default passwords for devices and systems.}
    spec.description   = %q{A simple tool for offline searching of default credentials for network devices, web applications and more.}
    spec.homepage      = "https://github.com/krishpranav/searchcreds"
  
    spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
    spec.bindir        = "exe"
    spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
    spec.require_paths = ["lib"]
  
    spec.add_development_dependency "bundler", "~> 1.12"
    spec.add_development_dependency "rake", "~> 10.0"
    spec.add_development_dependency "rspec", "~> 3.0"
    spec.add_development_dependency "httparty", "~> 0.14.0"
    spec.add_development_dependency "nokogiri", "~> 1.6", ">= 1.6.8"
end
