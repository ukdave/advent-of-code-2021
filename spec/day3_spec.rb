# frozen_string_literal: true

require "day3"

describe Day3 do
  subject { described_class.new(diagnostic_report) }

  let(:diagnostic_report) do
    %w[00100
       11110
       10110
       10111
       10101
       01111
       00111
       11100
       10000
       11001
       00010
       01010]
  end

  describe "#power_consumption" do
    it "returns the gamma_rate multiplied by the epsilon_rate" do
      expect(subject.power_consumption).to eq 198
    end
  end

  describe "#gamma_rate" do
    it "returns a number representing the most common bits" do
      expect(subject.gamma_rate).to eq 22
    end
  end

  describe "#epsilon_rate" do
    it "returns a number representing the least common bits" do
      expect(subject.epsilon_rate).to eq 9
    end
  end
end
