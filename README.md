# SimplyCleansable

Provides a framework for cleaning up the attributes on an object in a
declarative fashion, along with implementations of several common requirements.
Integrates automatically with ActiveRecord `before_validation` hooks, but works
with plain old ruby objects as well.

## Installation

Add this line to your application's Gemfile:

    gem 'simply_cleansable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simply_cleansable

## Usage

### Synopsis

    class Cat < ActiveRecord::Base
    
      validates :name, presence: true
      validates :color, inclusion: { in: %w( black white orange ) }
    
      include SimplyCleansable
    
      simply_cleanse :name, capitalize: true
      simply_cleanse :color, downcase: true, nil_to_string: false
    
    end

### Description

Including SimplyCleansable will give you access to the `simply_clease` declaration. It takes a list of one or more attributes, and an optional hash of commands at the end.

The built-in commands are documented below, and some are run by default, just by creating the declaration (ie. nil will be converted to an empty string and whitespace will be stripped by default).

### Invocation

If your class uses ActiveModel validations, attribute cleansing will be automatically invoked using the `before_validation` hook.

If you class does not use ActiveModel validations, you may invoke attribute cleansing by calling `simply_cleanse!` on any instance of your object.

### Commands

#### `nil_to_string` _(default true)_
#### `strip` _(default true)_
#### `downcase`
#### `capitalize`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
