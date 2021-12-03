# frozen_string_literal: true

class Day1
  def count_increases depths
    depths.each_cons(2).sum {|(depth1, depth2)| depth2 > depth1 ? 1 : 0 }
  end

  def count_increases_sliding_window depths
    count_increases(depths.each_cons(3).map(&:sum))
  end
end
