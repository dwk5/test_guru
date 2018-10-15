class User < ApplicationRecord
  has_many :passed_tests, dependent: :destroy
  has_many :tests, through: :passed_tests
  has_many :author_tests, class_name: "Test", foreign_key: "author_id"

  validates :email, presence: true, uniqueness: true

  def test_by_level(level)
   tests.where(level: level)
  end
end
