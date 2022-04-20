#!/usr/bin/env ruby

require "erb"
require "yaml"

config = YAML.load(File.read(ARGV[0]))
input = File.read("template.erb")
output = ERB.new(input).result_with_hash(config)
puts output
