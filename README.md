# Rails GUI 0.0.4
## User-Friendly Rails Productivity Tool
[![Gem Version](https://badge.fury.io/rb/rails-gui.svg)](http://badge.fury.io/rb/rails-gui)

[EARLY ALPHA]

Rails Graphical User Interface. Currently supports display of `rake routes` in a cached filterable table for quicker access. In the future, it could support things like running rails commands visually, plus other productivity features.

![rails gui rails routes screenshot](/screenshots/rails-gui-rails-routes.gif)

Given that the project is still early alpha, this is your chance to contribute ideas and pull requests for the project with whatever you want or see value in! Please open issues or pull requests to share your ideas!

## Setup

### RubyGem

Install (if using [RVM](https://rvm.io/), in the same [gemset](https://rvm.io/gemsets/basics) as your Rails app):

```
gem install rails-gui -v0.0.4
```

### Bundler

Add to `Gemfile` under `development` group:

```ruby
group :development do
  gem 'rails-gui', '~> 0.0.4'
end
```

Run:

```
bundle
```

## Usage

Run:

```
rails-gui
```

Screenshot:

![rails gui rails routes screenshot](/screenshots/rails-gui-rails-routes.png)

## TODO

[TODO.md](TODO.md)

## Change Log

[CHANGELOG.md](CHANGELOG.md)

## Contributing to rails-gui

-   Check out the latest master to make sure the feature hasn't been
    implemented or the bug hasn't been fixed yet.
-   Check out the issue tracker to make sure someone already hasn't
    requested it and/or contributed it.
-   Fork the project.
-   Start a feature/bugfix branch.
-   Commit and push until you are happy with your contribution.
-   Make sure to add tests for it. This is important so I don't break it
    in a future version unintentionally.
-   Please try not to mess with the Rakefile, version, or history. If
    you want to have your own version, or is otherwise necessary, that
    is fine, but please isolate to its own commit so I can cherry-pick
    around it.

## Copyright

[MIT](LICENSE.txt)

Copyright (c) 2022-2025 Andy Maleh. See [LICENSE.txt](LICENSE.txt) for further details.

--

[<img src="https://raw.githubusercontent.com/AndyObtiva/glimmer/master/images/glimmer-logo-hi-res.png" height=40 />](https://github.com/AndyObtiva/glimmer) Built with [Glimmer DSL for LibUI](https://github.com/AndyObtiva/glimmer-dsl-libui) (Ruby Desktop Development GUI Library)
