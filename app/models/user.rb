class User < ApplicationRecord
  def test_by_level(level)
    tests.order(level: level, created_at: :desc )
  end
end
