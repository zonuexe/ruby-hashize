Hashize
=======

Refinements classes of ruby's standard library as Hash

Installation
------------

Add this line to your application's Gemfile:

    gem 'hashize'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hashize

Supports Classes
----------------

### Standard Class

 * `Struct`

### Standard Library

 * `URI::Generic` (`uri`)

Usage
-----

In your code:

```ruby
require 'hashize'
using Hashize::URI::Generic
using Hashize::Struct

uri = URI::parse('http://dt.zonu.me/').to_hash
#=> {:scheme => "http",
# :userinfo => nil,
# :host => "dt.zonu.me",
# :port => 80,
# :path => "/",
# :query => nil,
# :fragment => nil}

MyStruct = Struct.new(:foo, :bar, :buz)
my = MyStruct.new('FOO', 'BAR', 'BUZ')
my.to_Hash
#=> {:foo => "FOO",
# :bar => "BAR",
# :buz => "BUZ"}
```

Contributing
------------

 1. Fork it
 2. Create your feature branch (`git checkout -b my-new-feature`)
 3. Commit your changes (`git commit -am 'Add some feature'`)
 4. Push to the branch (`git push origin my-new-feature`)
 5. Create new Pull Request
