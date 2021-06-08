# frozen_string_literal: true

require_relative "lib/courier_stories/version"

Gem::Specification.new do |spec|
  spec.name          = "courier_stories"
  spec.version       = CourierStories::VERSION
  spec.authors       = ["Regan-Mclachlan"]
  spec.email         = ["reganmc96@hotmail.com"]

  spec.summary       = "This is a CLI application"
  spec.description   = "This is my Courier news Phase 3 application for scraping"
  spec.homepage      = "https://github.com/Regan-Mclachlan"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.0")

  spec.metadata["allowed_push_host"] = "http://rubygems.org"
  spec.homepage = "https://github.com/Regan-Mclachlan/Phase3-Project/"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Regan-Mclachlan/Phase3-Project"
  spec.metadata["changelog_uri"] = "https://github.com/Regan-Mclachlan/Phase3-Project/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end

  spec.executables  << 'courier_stories'

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "nokogiri"
  spec.add_dependency "require_all"
  spec.add_development_dependency "pry"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
