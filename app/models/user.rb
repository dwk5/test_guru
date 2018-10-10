class User < ApplicationRecord
  has_many :passed_tests, dependent: :destroy
  has_many :tests, through: :passed_tests

  def test_by_level(level)
    tests.where(level: level)
  end
end
