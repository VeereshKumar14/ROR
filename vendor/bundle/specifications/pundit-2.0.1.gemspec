# -*- encoding: utf-8 -*-
# stub: pundit 2.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "pundit"
  s.version = "2.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jonas Nicklas", "Varvet AB"]
  s.date = "2019-01-18"
  s.description = "Object oriented authorization for Rails applications"
  s.email = ["jonas.nicklas@gmail.com", "dev@elabs.se"]
  s.homepage = "https://github.com/varvet/pundit"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.2.1"
  s.summary = "OO authorization for Rails"

  s.installed_by_version = "2.5.2.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.0"])
    else
      s.add_dependency(%q<activesupport>, [">= 3.0.0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 3.0.0"])
  end
end
