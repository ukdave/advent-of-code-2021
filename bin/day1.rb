#!/usr/bin/env ruby
# frozen_string_literal: true

$LOAD_PATH << "lib"
require "day1"

day1 = Day1.new
depths = File.readlines("fixtures/day1.txt").map(&:to_i)
puts day1.count_increases(depths)
puts day1.count_increases_sliding_window(depths)
