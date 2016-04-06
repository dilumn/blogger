# Blogger

Blogger API implementation for Ruby

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bloggerapi'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bloggerapi

## Usage

First of all

`require 'Blogger' `

Initialize `Blogger::Configuration` object with your API Key

Configuration
```ruby
@blogger = Blogger::Configuration.new do |config|
      config.key        = "YOUR_API_KEY"
      config.max_result = 100
      config.blog_id = "BLOG_ID" //Blog id to get posts
    end
```

Then fetch posts for the relevent blog
```ruby
posts = @blogger.get_blogposts
```

Posts is an array containing list of Blog posts.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dilumn/blogger. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

