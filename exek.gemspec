# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "exek/version"

Gem::Specification.new do |spec|
  spec.name          = "exek"
  spec.version       = Exek::VERSION
  spec.authors       = ["Jake Teton-Landis"]
  spec.email         = ["just.1.jake@gmail.com"]

  spec.summary       = %q{Comprehensive tools to start and run commands.}
  spec.description   = <<-EOS
Most existing gems that address command execution provide a limited interface
or lack notable features. In contast, Exek seeks to provide comprehensive
support for all of a program's exec needs with one thoughtfully-designed
library.

Intended features:

- A "Command" class that encapsulates argv, env, and IO options, and
  process state.
- Easy-to-use high level interfaces with sensible defaults for running commands
  to completion.
- Comprehensive support for low-level concerns like piping, PTYs, and file
  descriptor magic.
- Utilities for manipulating `sh` script strings, idiomatically building
  argument arrays, and generating reusable interaces for common system commands.
- Tracing and introspection facilities for logging and latency analysis.
- Safety: does not monkeypatch external modules, encourage mixins or use eval.
  Attempts to guide developers away from unsafe practices like shell scripts
  and shell injection.
EOS
  spec.homepage      = "https://github.com/justjake/exek"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
