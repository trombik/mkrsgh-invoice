#!/usr/bin/env ruby
# frozen_string_literal: true

require "erb"
require "yaml"

config = YAML.safe_load(File.read(ARGV[0]))
input = File.read("template.erb")
output = ERB.new(input).result_with_hash(config)
puts output
