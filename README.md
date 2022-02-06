# Release Version

Generate nice version numbers for your application

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'release_version', '0.1.0', group: :development, require: false
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install release_version

## Usage

    $ release_version

It will generate a file named `.release_version` with the release version and add a tag to the git repository.

If the file already exists it will only update the release version.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
