# Exek

Comprehensive tools to start and run commands.

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

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'exek'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install exek

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/justjake/exek.
