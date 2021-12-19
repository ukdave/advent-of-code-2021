# frozen_string_literal: true

class Day3
  def initialize diagnostic_report
    @diagnostic_report = diagnostic_report
  end

  def power_consumption
    gamma_rate * epsilon_rate
  end

  def gamma_rate
    @diagnostic_report.map(&:chars)
                      .transpose
                      .map(&:tally)
                      .map {|x| x.key(x.values.max) }
                      .join
                      .to_i(2)
  end

  def epsilon_rate
    @diagnostic_report.map(&:chars)
                      .transpose
                      .map(&:tally)
                      .map {|x| x.key(x.values.min) }
                      .join
                      .to_i(2)
  end
end
