# frozen_string_literal: true

class Day2
  attr_reader :horizontal, :depth, :aim

  def initialize
    @horizontal = 0
    @depth = 0
    @aim = 0
  end

  def run_commands commands
    commands.each {|c| run_command(c) }
    @horizontal * @depth
  end

  def run_commands2 commands
    commands.each {|c| run_command2(c) }
    @horizontal * @depth
  end

  private

  def run_command command
    instruction, count = command.split(" ", 2)
    case instruction
    when "forward"
      @horizontal += count.to_i
    when "down"
      @depth += count.to_i
    when "up"
      @depth -= count.to_i
    end
  end

  def run_command2 command
    instruction, count = command.split(" ", 2)
    case instruction
    when "forward"
      @horizontal += count.to_i
      @depth += @aim * count.to_i
    when "down"
      @aim += count.to_i
    when "up"
      @aim -= count.to_i
    end
  end
end
