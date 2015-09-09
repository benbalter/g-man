require File.expand_path "./lib/gman/version", File.dirname(__FILE__)

Gem::Specification.new do |s|
  s.name = "gman"
  s.summary = "Check if a given domain or email address belong to a governemnt entity"
  s.description = "A ruby gem to check if the owner of a given email address is working for THE MAN."
  s.version = Gman::VERSION
  s.authors = ["Ben Balter"]
  s.email = "ben.balter@github.com"
  s.homepage = "https://github.com/benbalter/gman"
  s.licenses = ["MIT"]

  s.files                 = `git ls-files`.split("\n")
  s.test_files            = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables           = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths         = ["lib"]

  s.require_paths = ["lib"]
  s.required_ruby_version = '~> 2.0'

  s.add_dependency( "swot", '~> 1.0' )
  s.add_dependency( "iso_country_codes", "~> 0.6" )
  s.add_dependency( "naughty_or_nice", "~> 2.0" )

  s.add_development_dependency( "rake" )
  s.add_development_dependency( "shoulda" )
  s.add_development_dependency( "rdoc" )
  s.add_development_dependency( "bundler" )
  s.add_development_dependency( "pry" )
  s.add_development_dependency( "parallel" )
  s.add_development_dependency( "mechanize" )
  s.add_development_dependency( "addressable" )
  s.add_development_dependency( "ruby-prof" )

end
