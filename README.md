# Omniauth::Fake

**omniauth-fake** is a [OmniAuth](https://github.com/intridea/omniauth)
strategy to authenticate using just username
by delegating to `User.fake_authenticate(username)`.

**omniauth-fake** can be used as an authenticator for
[OmniAuth MultiPassword](https://github.com/jgraichen/omniauth-multipassword).

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-fake'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-fake

## Usage

Add a `fake_authenticate` class method to your model:

```ruby
  def self.fake_authenticate(login)
    find_by_username(login)
  end
```

You can configure the model class used by **omniauth-fake**.

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :fake, :model => ::MyUser
end
```

## Options

** model **
The model to call `authenticate` on.
(default: `User`)

** title **
The title text shown on default login form.
(default: `"Restricted Access"`)

** fields **
The request parameter names to fetch username and password.
(default: `[ "username", "password" ]`)


## License

[MIT License](http://www.opensource.org/licenses/mit-license.php)

Copyright (c) 2012, Jan Graichen, Dmitriy Kiriyenko
