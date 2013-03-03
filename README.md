# CarrierWave::UNOConv

Additional processing to use LibrOffice via [UNOConv](https://github.com/dagwieers/unoconv) into [CarrierWave](https://github.com/jnicklas/carrierwave).

## Installation

Install unoconv, and make sure it's in the `PATH` of your app's user

Add this line to your application's Gemfile:

    gem 'carrierwave-unoconv'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install carrierwave-unoconv

## Usage

To use those, you should include specified module (UNOConv) into your uploader and use processors:
```ruby
class AvatarUploader < CarrierWave::Uploader::Base
  include CarrierWave::UNOConv
  .....

end
```

You also should start an `unoconv` listener when your app starts, otherwise there may be issues with concurrency.

## Method implemented

    uno_convert


## Example
```ruby
class Uploader < CarrierWave::Uploader::Base
  include CarrierWave::UNOConv

  process uno_convert: 'pdf'

end
```
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## Author

crazymykl, you can follow me on twitter [@Crazy_MYKL](http://twitter.com/Crazy_MYKL) or take a look at my [blog](http://crazymykl.herokuapp.com)

## Copyright

Copyright (C) 2012 Mike MacDonald - [@Crazy_MYKL](http://twitter.com/Crazy_MYKL)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
associated documentation files (the “Software”), to deal in the Software without restriction, including without
limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software,
and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM,
DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
