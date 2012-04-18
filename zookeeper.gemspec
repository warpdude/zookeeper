# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "zookeeper"
  s.version = "0.4.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Phillip Pearson, Eric Maland, Evan Weaver, Brian Wickman"]
  s.date = "2012-04-18"
  s.description = "An interface to the Zookeeper distributed configuration server."
  s.email = ""
  s.extensions = ["ext/extconf.rb"]
  s.extra_rdoc_files = ["CHANGELOG", "LICENSE", "README", "ext/zookeeper_c.c", "lib/zookeeper.rb"]
  s.files = ["CHANGELOG", "LICENSE", "Manifest", "README", "Rakefile", "examples/cloud_config.rb", "ext/extconf.rb", "ext/zkc-3.3.4.tar.gz", "ext/zookeeper_base.rb", "ext/zookeeper_c.c", "ext/zookeeper_lib.c", "ext/zookeeper_lib.h", "java/zookeeper_base.rb", "lib/zookeeper.rb", "lib/zookeeper/acls.rb", "lib/zookeeper/callbacks.rb", "lib/zookeeper/common.rb", "lib/zookeeper/constants.rb", "lib/zookeeper/exceptions.rb", "lib/zookeeper/stat.rb", "spec/log4j.properties", "spec/spec_helper.rb", "spec/zookeeper_spec.rb", "test/test_basic.rb", "test/test_callback1.rb", "test/test_close.rb", "test/test_esoteric.rb", "test/test_watcher1.rb", "test/test_watcher2.rb", "zookeeper.gemspec"]
  s.homepage = "http://twitter.github.com/twitter/zookeeper/"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Zookeeper", "--main", "README"]
  s.require_paths = ["lib", "ext"]
  s.rubyforge_project = "twitter"
  s.rubygems_version = "1.8.22"
  s.summary = "An interface to the Zookeeper distributed configuration server."
  s.test_files = ["test/test_basic.rb", "test/test_callback1.rb", "test/test_close.rb", "test/test_esoteric.rb", "test/test_watcher1.rb", "test/test_watcher2.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
