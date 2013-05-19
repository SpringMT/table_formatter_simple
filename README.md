# TableFormatterSimple [![Build Status](https://travis-ci.org/SpringMT/table_formatter_simple)](https://travis-ci.org/SpringMT/table_formatter_simple)

Format a table in Teminal.

## Installation

Add this line to your application's Gemfile:

    gem 'table_formatter_simple'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install table_formatter_simple

## Usage

```
[{foo: 'aaa', bar: 'bbbb'}, {foo: 'ccc', bar: 'dddd'}]
```

To convert below.

```
+-----+------+
| foo | bar  |
+-----+------+
| aaa | bbbb |
| ccc | dddd |
+-----+------+
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

