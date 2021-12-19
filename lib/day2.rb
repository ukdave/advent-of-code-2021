# frozen_string_literal: true

class Day2
  attr_reader :horizontal, :depth

  def initialize
    @horizontal = 0
    @depth = 0
  end

  def run_commands commands
    commands.each {|c| run_command(c) }
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
end
