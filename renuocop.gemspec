# frozen_string_literal: true

require_relative "lib/renuocop/version"

Gem::Specification.new do |spec|
  spec.name = "renuocop"
  spec.version = Renuocop::VERSION
  spec.authors = ["Alessandro Rodi"]
  spec.email = ["alessandro.rodi@renuo.ch"]

  spec.summary = "Renuo default style guide, linter, and formatter."
  spec.description = "Renuo default style guide, linter, and formatter."
  spec.homepage = "https://www.renuo.ch"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/renuo/renuocop"
  spec.metadata["changelog_uri"] = "https://github.com/renuo/renuocop/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "standard"
  spec.add_dependency "rubocop-rails"
  spec.add_dependency "rubocop-rspec"
  spec.add_dependency "rubocop-performance"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end