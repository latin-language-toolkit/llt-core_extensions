# LLT::CoreExtensions

Monkey patches used by several llt-gems

## Installation

Add this line to your application's Gemfile:

    gem 'llt-core_extensions'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install llt-core_extensions

## Usage

The monkey patches can be loaded by class or all together, similar to
ActiveSupport.

```ruby
require 'llt/core_extensions'
# => loads patches for all classes

require 'llt/core_extensions/array'
# => loads only patches for Array
```



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
