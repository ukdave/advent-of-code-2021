#!/usr/bin/env ruby
# frozen_string_literal: true

$LOAD_PATH << "lib"
require "day2"

day2 = Day2.new
commands = File.readlines("fixtures/day2.txt")
puts day2.run_commands(commands)
