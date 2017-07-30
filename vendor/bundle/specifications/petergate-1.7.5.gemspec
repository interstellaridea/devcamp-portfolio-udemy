# -*- encoding: utf-8 -*-
# stub: petergate 1.7.5 ruby lib

Gem::Specification.new do |s|
  s.name = "petergate"
  s.version = "1.7.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Isaac Sloan"]
  s.date = "2017-05-22"
  s.description = "If you like the straight forward and effective nature of Strong Parameters and suspect that CanCan might be overkill for your project then you'll love Petergate's easy to use and read action and content based authorizations."
  s.email = ["isaac@isaacsloan.com"]
  s.homepage = "https://github.com/isaacsloan/petergate"
  s.licenses = ["MIT"]
  s.post_install_message = "NOTICE: As of version 1.5.0, the :admin role has been changed to :root_admin."
  s.rubygems_version = "2.5.1"
  s.summary = "Authorization system allowing verbose easy read controller syntax."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.7"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_runtime_dependency(%q<activerecord>, ["> 4.0.0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.7"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<activerecord>, ["> 4.0.0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.7"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<activerecord>, ["> 4.0.0"])
  end
end
