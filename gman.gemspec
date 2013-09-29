Gem::Specification.new do |s|
  s.name = "gman"
  s.summary = "Check if a given domain or email address belong to a governemnt entity"
  s.description = "A ruby gem to check if the owner of a given email address is working for THE MAN."
  s.version = "0.0.2"
  s.authors = ["Ben Balter"]
  s.date = "2013-08-30"
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
  s.add_dependency( "public_suffix" )
end
