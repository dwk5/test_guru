class User < ApplicationRecord
  def test_by_level(level)
    tests.where(level: level)
  end
end
