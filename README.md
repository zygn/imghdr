# Imghdr
[English](https://github.com/zygn/imghdr#readme) | [한국어](https://github.com/zygn/imghdr/blob/main/README_ko_kr.md)

This library examines the image type of the file, which is RubyGem, which inherits Python [imghdr](https://docs.python.org/3/library/imghdr.html) module.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'imghdr'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install imghdr

## Usage

```ruby
require 'imghdr'

Imghdr.what("Some-Pic.jpg")
#    => 'jpeg'

Imghdr.what("Some-Pic.gif")
#    => 'gif'

Imghdr.what("Some-Music.mp3")
#    => 'nil' (nilClass)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/zygn/imghdr. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/zygn/imghdr/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Imghdr project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/zygn/imghdr/blob/master/CODE_OF_CONDUCT.md).
