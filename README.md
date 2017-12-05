# Configurable With

A simple module making any class configurable.

## Instalation

From the command line:

    $ gem install configurable_with

Or in your *Gemfile*:

    $ gem 'configurable_with'

## Usage

Include `ConfigurableWith` to the class you want to make configurable. On the included `ConfigurableWith` class call a class method `options` and pass symbols with the names of configuration options as parameters:

```ruby
require  'configurable_with'

class TestClass
  include ConfigurableWith.options(:first_value, :second_value)
end
```

Now you can easily set those values:

```ruby
TestClass.configure do |config|
  config.first_value = "value 1"
  config.second_value = "value 2"
end
```

And use those values:

```ruby
TestClass.config.first_value # => "value 1"
TestClass.config.second_value # => "value 2"
```

## Licence

This is licensed under [MIT](https://choosealicense.com/licenses/mit/) licence:

**MIT License**

Copyright (c) [2017] [[CodeRocket.co](http://coderocket.co)]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
