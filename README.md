# Shengxiao | 生肖

Shengxiao is a Chinese zodiac sign calculator. It provides you a Chinese zodiac
sign by a given date.

## Installation

You can add it to your Gemfile with:

```ruby
gem 'shengxiao'
```

or

```bash
gem install shengxiao
```

Then run `bundle install`

## Usage

```ruby
ShengXiao.sign(Date.today)        # => Rooster

# or pass a string with date
ShengXiao.sign("07.01.1997")      # => Rat
```

You can also call `chinese_zodiac_sign` method on Date/DateTime class objects.

```ruby
Date.new(2014, 3, 20).chinese_zodiac_sign              # => Horse

DateTime.new(2001,2,3,4,5,6,'+7').chinese_zodiac_sign  # => Snake
```

## Included locales

* en (English)
* ru (Russian)
* zh-CN (Chinese)

## Changelog
* 0.0.1 Initial version with [:en, :ru, :zh-CN] locales
* 0.1.0 Add method to Date, DateTime class object
