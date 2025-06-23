# YS6

## Installation

```sh
bundle install
rake install:local
```

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

### Test

#### Mac

```sh
brew install ollama
ollama serve
```

```sh
ollama pull gemma3
rake
```

#### Linux

```sh
curl -fsSL https://ollama.com/install.sh | sh
ollama run gemma3
# ctrl + d
rake
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/YumaYX/ys6.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
