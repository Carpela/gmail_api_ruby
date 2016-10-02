# -*- encoding: utf-8 -*-

$:.push File.expand_path('../lib', __FILE__)
require 'gmail/version'

Gem::Specification.new do |s|
  s.name = "gmail-api-ruby"
  s.summary = "A Ruby interface to Gmail API (NO IMAP, NO SMTP), with all the tools you will need."
  s.description = "A Ruby interface to Gmail API (NO IMAP, NO SMTP).
  Search, read and send multipart emails; archive, mark as read/unread,
  delete emails; and manage labels. Everything is done through the Gmail API without going through IMAP or SMTP Protocol
  "
  s.version = Gmail::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["Julien Hobeika","Keiran Betteley"]
  s.homepage = "http://github.com/jhk753/gmail-ruby-api"
  s.licenses = ['MIT']


#gmail-ruby-api Dependencies
  # runtime dependencies
  s.required_ruby_version = '>= 1.9.3'
  s.add_dependency "mime", ">= 0.1"
  s.add_dependency "mail", ">= 2.2.1"
  s.add_dependency "activesupport"
  s.add_dependency 'google-api-client', ">=0.9"
  s.add_dependency "hooks", ">=0.4.0"
  s.add_dependency "hashie", ">=3.3.2"
  s.add_dependency "stringex"

  # development dependencies
  s.add_development_dependency "rake"
  s.add_development_dependency "test-unit"
  s.add_development_dependency('mocha', '~> 1.0.0')
  s.add_development_dependency('shoulda', '~> 3.5.0')


  s.add_development_dependency "gem-release"
  
#google-drive dependencies

  s.add_dependency('nokogiri', ['>= 1.5.3', '< 2.0.0'])
  s.add_dependency('google-api-client', ['>= 0.9.0', '< 1.0.0'])
  s.add_dependency('googleauth', ['>= 0.5.0', '< 1.0.0'])
  s.add_development_dependency('test-unit', ['>= 3.0.0', '< 4.0.0'])
  s.add_development_dependency('rake', ['>= 0.8.0'])
  s.add_development_dependency('rspec-mocks', ['>= 3.4.0', '< 4.0.0'])

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
