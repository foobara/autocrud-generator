require_relative "version"

Gem::Specification.new do |spec|
  spec.name = "foobara-autocrud-generator"
  spec.version = Foobara::Generators::AutocrudGenerator::VERSION
  spec.authors = ["Miles Georgi"]
  spec.email = ["azimux@gmail.com"]

  spec.summary = "Generates a Foobara autocrud"
  spec.homepage = "https://github.com/foobara/generators-autocrud-generator"

  # Equivalent to SPDX License Expression: Apache-2.0 OR MIT
  spec.license = "Apache-2.0 OR MIT"
  spec.licenses = ["Apache-2.0", "MIT"]

  spec.required_ruby_version = Foobara::Generators::AutocrudGenerator::MINIMUM_RUBY_VERSION

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  spec.files = Dir[
    "lib/**/*",
    "src/**/*",
    "LICENSE*.txt",
    "README.md",
    "CHANGELOG.md"
  ]

  spec.add_dependency "foobara"
  spec.add_dependency "foobara-files-generator"

  spec.require_paths = ["lib"]
  spec.metadata["rubygems_mfa_required"] = "true"
end
