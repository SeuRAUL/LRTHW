# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "NAME"
  spec.version       = '1.0'
  spec.authors       = ["SeuRAUL"]
  spec.email         = ["seuraul.0@gmail.com"]
  spec.summary       = %q{Short summary of your project}
  spec.description   = %q{Longer description of your project.}
  spec.homepage      = "http://domainforproject.com/"
  spec.license       = "MIT"

  spec.files         = ['lib/ex48.rb', 'lib/lexicon.rb']
  spec.executables   = ['bin/ex48']
  spec.test_files    = ['tests/test_ex48.rb', 'tests/test_lexicon.rb']
  spec.require_paths = ["lib"]
end