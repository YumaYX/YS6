# frozen_string_literal: true

require "bundler/gem_tasks"
require "minitest/test_task"

Minitest::TestTask.create

require "rubocop/rake_task"
RuboCop::RakeTask.new(:rubocop) do |t|
  t.patterns = %w[bin lib test Rakefile]
  t.options = ["--format", "simple"]
end

task default: %i[test rubocop]
