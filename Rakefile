require 'rake/testtask'
require 'yard'
require 'fileutils'
GEMSPEC = 'shenanigans.gemspec'

Rake::TestTask.new do |t|
  t.pattern = 'test/**/test_*.rb'
end

YARD::Rake::YardocTask.new do |t|
  t.options = ['--protected', '--private']
end

def gemspec
  @gemspec ||= eval(File.read(GEMSPEC), binding, GEMSPEC)
end

namespace :gem do
  desc 'Build the gem'
  task :build => :rerdoc do
    sh "gem build #{GEMSPEC}"
    FileUtils.mkdir_p 'pkg'
    FileUtils.mv "#{gemspec.name}-#{gemspec.version}.gem", "pkg"
  end

  desc 'Install the gem locally'
  task :install => :build do
    sh "gem install pkg/#{gemspec.name}-#{gemspec.version}.gem"
  end
end

task :default => [:test]
