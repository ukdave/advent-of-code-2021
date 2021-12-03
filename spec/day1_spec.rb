# frozen_string_literal: true

require "day1"

describe Day1 do
  describe "#count_increases" do
    it "counts the number of times the depth increases" do
      depths = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]
      expect(subject.count_increases(depths)).to eq 7
    end
  end
end
