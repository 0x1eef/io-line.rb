# frozen_string_literal: true

require "./lib/io/line"
Gem::Specification.new do |gem|
  gem.name = "io-line.rb"
  gem.authors = ["0x1eef"]
  gem.email = ["0x1eef@protonmail.com"]
  gem.homepage = "https://github.com/0x1eef/io-line.rb#readme"
  gem.version = IO::Line::VERSION
  gem.licenses = ["BSD0L"]
  gem.files = `git ls-files`.split($/)
  gem.require_paths = ["lib"]
  gem.summary = "Line manipulation via io-console"
  gem.description = gem.summary
  gem.add_runtime_dependency "io-console", "~> 0.5"
end
