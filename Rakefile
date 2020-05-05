require "bundler/gem_tasks"
require "rake/testtask"
require "standard/rake"
require "yard"

Rake::TestTask.new do |t|
  t.pattern = "test/**/test_*.rb"
end

YARD::Rake::YardocTask.new do |t|
  t.options = ["--protected", "--private"]
end

task default: [:test]
