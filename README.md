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

### Release

1. Bump the version in `lib/renuocop/version.rb`, update `CHANGELOG.md` and commit to `main`.
1. Tag the commit with the bare version (no `v` prefix, unlike the tags up to `v0.8.10`) and push the tag:

   ```bash
   git tag -a 1.2.3 -m 1.2.3
   git push origin 1.2.3
   ```

1. Create a GitHub release for the tag with the changelog section as notes.

Semaphore runs the tests on the tag and, when they pass, promotes the `release` pipeline, which pushes the gem to
[rubygems.org](https://rubygems.org). It fails when the tag does not match the gem version.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/renuo/renuocop. 
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/renuo/renuocop/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Renuocop project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/renuo/renuocop/blob/master/CODE_OF_CONDUCT.md).
