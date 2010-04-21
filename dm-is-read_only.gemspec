# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dm-is-read_only}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Postmodern"]
  s.date = %q{2010-04-21}
  s.description = %q{A DataMapper plugin for making Models absolutely read-only.}
  s.email = %q{postmodern.mod3@gmail.com}
  s.extra_rdoc_files = [
    "ChangeLog.md",
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".gitignore",
    ".specopts",
    ".yardopts",
    "ChangeLog.md",
    "Gemfile",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "lib/dm-is-read_only.rb",
    "lib/dm-is-read_only/is/read_only.rb",
    "lib/dm-is-read_only/is/version.rb",
    "spec/integration/read_only_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.has_rdoc = %q{yard}
  s.homepage = %q{http://github.com/postmodern/dm-is-read_only}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{A DataMapper plugin for making Models absolutely read-only.}
  s.test_files = [
    "spec/integration/read_only_spec.rb",
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["~> 3.0.0.beta3"])
      s.add_runtime_dependency(%q<dm-core>, ["~> 0.10.3"])
      s.add_development_dependency(%q<rake>, ["~> 0.8.7"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.4.0"])
      s.add_development_dependency(%q<yard>, ["~> 0.5.3"])
      s.add_development_dependency(%q<rspec>, ["~> 1.3.0"])
      s.add_runtime_dependency(%q<dm-core>, [">= 0.10.2"])
      s.add_development_dependency(%q<rspec>, ["~> 1.3.0"])
      s.add_development_dependency(%q<yard>, ["~> 0.5.3"])
    else
      s.add_dependency(%q<activesupport>, ["~> 3.0.0.beta3"])
      s.add_dependency(%q<dm-core>, ["~> 0.10.3"])
      s.add_dependency(%q<rake>, ["~> 0.8.7"])
      s.add_dependency(%q<jeweler>, ["~> 1.4.0"])
      s.add_dependency(%q<yard>, ["~> 0.5.3"])
      s.add_dependency(%q<rspec>, ["~> 1.3.0"])
      s.add_dependency(%q<dm-core>, [">= 0.10.2"])
      s.add_dependency(%q<rspec>, ["~> 1.3.0"])
      s.add_dependency(%q<yard>, ["~> 0.5.3"])
    end
  else
    s.add_dependency(%q<activesupport>, ["~> 3.0.0.beta3"])
    s.add_dependency(%q<dm-core>, ["~> 0.10.3"])
    s.add_dependency(%q<rake>, ["~> 0.8.7"])
    s.add_dependency(%q<jeweler>, ["~> 1.4.0"])
    s.add_dependency(%q<yard>, ["~> 0.5.3"])
    s.add_dependency(%q<rspec>, ["~> 1.3.0"])
    s.add_dependency(%q<dm-core>, [">= 0.10.2"])
    s.add_dependency(%q<rspec>, ["~> 1.3.0"])
    s.add_dependency(%q<yard>, ["~> 0.5.3"])
  end
end
