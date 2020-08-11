lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "kitchen/driver/dokken_version"

Gem::Specification.new do |spec|
  spec.name          = "kitchen-dokken"
  spec.version       = Kitchen::Driver::DOKKEN_VERSION
  spec.authors       = ["Sean OMeara"]
  spec.email         = ["sean@sean.io"]
  spec.description   = "A Test Kitchen Driver for Dokken"
  spec.summary       = "A Test Kitchen Driver that talks to the Docker Remote API and uses Volumes to produce sparse container images"
  spec.homepage      = "https://github.com/someara/kitchen-dokken"
  spec.license       = "Apache-2.0"

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR).grep(/LICENSE|^lib/)
  spec.require_paths = ["lib"]

  spec.add_dependency "docker-api", "~> 1.33"
  spec.add_dependency "lockfile", "~> 2.1"
  spec.add_dependency "test-kitchen", ">= 1.15", "< 3"

  spec.add_development_dependency "chefstyle", "= 1.2.1"
  spec.add_development_dependency "climate_control", "~> 0.2.0"
  spec.add_development_dependency "countloc", "~> 0.4.0"
  spec.add_development_dependency "pry-byebug", "~> 3.9"
  spec.add_development_dependency "rake", "~> 13.0", ">= 13.0.1"
  spec.add_development_dependency "simplecov", "~> 0.18.5"
end
