#!/usr/bin/env ruby
# frozen_string_literal: true

$LOAD_PATH << "lib"
require "day2"

commands = File.readlines("fixtures/day2.txt")
puts Day2.new.run_commands(commands)
puts Day2.new.run_commands2(commands)
