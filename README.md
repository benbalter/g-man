# Gman Gem

[![Build Status](https://travis-ci.org/benbalter/gman.png)](https://travis-ci.org/benbalter/gman) [![Gem Version](https://badge.fury.io/rb/gman.png)](http://badge.fury.io/rb/gman)

A ruby gem to check if the owner of a given email address or website is working for THE MAN (a.k.a verifies government domains). It does this by leveraging the power of the [Public Suffix List](http://publicsuffix.org/), and the associated [Ruby Gem](https://github.com/weppos/publicsuffix-ruby).

You could theoretically [use regex](https://gist.github.com/benbalter/6147066), but either you'll get a bunch of false positives, or your regex will be insanely complicated. `gov.uk`, may be valid, for example, but `gov.fr` is not (it's `gouv.fr`, for what it's worth).

The solution? Use Public Suffix to verify that it's a valid public domain, then maintain [a crowd-sourced sub-list of known global government and military domains](https://github.com/benbalter/gman/blob/master/lib/domains.txt). It should cover all US and international, government and military domains for both email and website verification.

See a domains that's missing or one that shouldn't be there? [We'd love you to contribute](CONTRIBUTING.md).

## Installation

Gman is a Ruby gem, so you'll need a little Ruby-fu to get it working. Simply

`gem install gman`

Or add this to your `Gemfile` before doing a `bundle install`:

`gem 'gman'`

## Usage

### In general

### Verify email addresses

```ruby
Gman.valid? "foo@bar.gov" #=> true
Gman.valid? "foo@bar.com" #=> false
```

### Verify domain

```ruby
Gman.valid? "http://foo.bar.gov" #=> true
Gman.valid? "foo.bar.gov"        #=> true
Gman.valid? "foo.gov"            #=> true
Gman.valid? "foo.biz"            #=> false
```

### Get the ISO Country Code information represented by a government domain

```ruby
domain = Gman.new "whitehouse.gov" #=> #<Gman domain="whitehouse.gov" valid=true>
domain.country.name                #=> "United States"
domain.country.alpha2              #=> "US"
domain.country.alpha3              #=> "USA"
domain.country.currency            #=> "USD"
domain.conutry.calling_code        #=> "+1"
```

### Check if a government domain is a research institution

```ruby
Gman.research? "foo@sandia.gov"     #=> true
Gman.research? "foo@whitehouse.gov" #=> false
```

### Command line

Filters newline-separated email addresses from stdin. Example usage:

```
$ gman_filter < path/to/list/of/addresses.txt
```

## Contributing

Contributions welcome! Please see [the contribution guidelines](CONTRIBUTING.md) for code contributions or for details on how to add, update, or delete government domains.

## Credits

Heavily inspired by [swot](https://github.com/leereilly/swot). Thanks [@leereilly](https://github.com/leereilly)!
