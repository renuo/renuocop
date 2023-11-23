# Renuocop

Renuocop gem wraps all the libraries needed to run Rubocop on a project with a default Renuo configuration.
It's similar to what standardrb does, but tailor-made on Renuo needs.
At Renuo we in fact want to have more rules compared to standardrb but a lot less compared to rubocop.
We therefore start from the bare minimum provided by standardrb and add our own rules.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'renuocop'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install renuocop

## Usage

To run renuocop on your project, add `renuocop` to your Gemfile

```ruby
group :development, :test do
  gem 'renuocop'
end
```

Then create a .rubocop.yml

```yaml
inherit_gem:
  renuocop: config/base.yml
```

And then run it with

    $ bundle exec rubocop

## Development

After checking out the repo, run `bin/setup` to install dependencies. 
Then, run `rake test` to run the tests. 
You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. 
To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, 
which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/renuo/renuocop. 
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/renuo/renuocop/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Renuocop project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/renuo/renuocop/blob/master/CODE_OF_CONDUCT.md).
