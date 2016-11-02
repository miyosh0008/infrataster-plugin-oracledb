# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = "infrataster-plugin-oracledb"
  spec.version       = '0.1.2'
  spec.authors       = ["Michitoshi Yoshida"]
  spec.email         = ["miyosh0008@gmail.com"]
  spec.summary       = %q{Oracle Database plugin for Infrataster}
  spec.homepage      = "https://github.com/miyosh0008/infrataster-plugin-oracledb"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "infrataster", "~> 0.3.0"
  spec.add_runtime_dependency "ruby-oci8"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
