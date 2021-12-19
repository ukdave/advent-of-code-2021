# frozen_string_literal: true

require "day2"

describe Day2 do
  describe "#run_commands" do
    it "runs a series of commands and returns the final position (horizontal * depth)" do
      commands = ["forward 5", "down 5", "forward 8", "up 3", "down 8", "forward 2"]
      expect(subject.run_commands(commands)).to eq 150
    end
  end

  describe "#run_commands2" do
    it "runs a series of commands and returns the final position (horizontal * depth)" do
      commands = ["forward 5", "down 5", "forward 8", "up 3", "down 8", "forward 2"]
      expect(subject.run_commands2(commands)).to eq 900
    end
  end
end
