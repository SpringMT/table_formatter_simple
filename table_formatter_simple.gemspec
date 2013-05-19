# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "table_formatter_simple"
  spec.version       = "0.0.1"
  spec.authors       = ["SpringMT"]
  spec.email         = ["today.is.sky.blue.sky@gmail.com"]
  spec.summary       = %q{Format a table in Teminal}
  spec.homepage      = "https://github.com/SpringMT/table_formatter_simple"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.description = <<description
Format a table in Teminal.
description
end

