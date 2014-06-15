Gem::Specification.new do |s|
  s.name = "gman"
  s.summary = "Check if a given domain or email address belong to a governemnt entity"
  s.description = "A ruby gem to check if the owner of a given email address is working for THE MAN."
  s.version = "2.1.0"
  s.authors = ["Ben Balter"]
  s.email = "ben.balter@github.com"
  s.homepage = "https://github.com/benbalter/gman"
  s.licenses = ["MIT"]

  s.files = [
    "Gemfile",
    "README.md",
    "CONTRIBUTING.md",
    "LICENSE",
    "lib/gman.rb",
    "lib/domains.txt",
    "script/build",
    "script/release",
    "gman.gemspec",
    "test/helper.rb",
    "test/test_gman.rb",
    "Rakefile",
    ".gitignore"
  ]
  s.require_paths = ["lib"]
  s.add_dependency( "public_suffix", '~> 1.4')
  s.add_dependency( "swot", '~> 0.3' )
  s.add_dependency( "addressable", '~> 2.3' )

  s.add_development_dependency( "rake" )
  s.add_development_dependency( "shoulda" )
  s.add_development_dependency( "rdoc" )
  s.add_development_dependency( "bundler" )
end
