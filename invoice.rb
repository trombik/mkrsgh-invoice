#!/usr/bin/env ruby
# frozen_string_literal: true

require "erb"
require "yaml"

invoice_config = YAML.safe_load(File.read(ARGV[0]))
config = YAML.safe_load(File.read("issuer.yml"))
config.merge!(invoice_config)

input = File.read("template.erb")
output = ERB.new(input).result_with_hash(config)
puts output
