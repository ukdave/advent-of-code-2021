#!/usr/bin/env ruby
# frozen_string_literal: true

$LOAD_PATH << "lib"
require "day3"

diagnostic_report = File.readlines("fixtures/day3.txt")
puts Day3.new(diagnostic_report).power_consumption
