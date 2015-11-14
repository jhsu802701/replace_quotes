[![Dependency Status](https://gemnasium.com/jhsu802701/replace_quotes.svg)](https://gemnasium.com/jhsu802701/replace_quotes)
[![Build Status](https://travis-ci.org/jhsu802701/replace_quotes.svg?branch=master)](https://travis-ci.org/jhsu802701/replace_quotes)
[![Code Climate](https://codeclimate.com/github/jhsu802701/replace_quotes/badges/gpa.svg)](https://codeclimate.com/github/jhsu802701/replace_quotes)
[![Test Coverage](https://codeclimate.com/github/jhsu802701/replace_quotes/badges/coverage.svg)](https://codeclimate.com/github/jhsu802701/replace_quotes/coverage)
[![security](https://hakiri.io/github/jhsu802701/replace_quotes/master.svg)](https://hakiri.io/github/jhsu802701/replace_quotes/master)

# ReplaceQuotes

This gem is used for improving RuboCop compliance by replacing unnecessary double quotes with single quotes in a file.  To avoid causing errors, ReplaceQuotes leaves double quotes alone when they are used in a line containing single quotes.
<br><br>
Before:
```
"There is Ruby on High Speed Rails, and there is Not Exactly."
"Make sure you choose the correct one."

"I hope we're using Ruby on High Speed Rails"
"There's Ruby on High Speed Rails, and there's Not Exactly."
```
After:
```
'There is Ruby on High Speed Rails, and there is Not Exactly.'
'Make sure you choose the correct one.'

"I hope we're using Ruby on High Speed Rails"
"There's Ruby on High Speed Rails, and there's Not Exactly."
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'replace_quotes'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install replace_quotes

## Usage

In a Ruby script or console, enter the command `ReplaceQuotes.update(filename)`, where filename is the name of the file for which you wish to replace unnecessary double quotes with single quotes.

## Development


### Testing this gem

Enter `sh gem_test.sh`.

### Testing the source code
Enter `sh gem_code.sh`.

### Running this gem in irb

Enter `sh gem_console.sh`.

### Installing this gem

Enter `sh gem_install.sh`.

### Testing this gem and source code AND installing this gem

Enter `sh all.sh`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/replace_quotes. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

