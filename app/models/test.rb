class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author , class_name: "User"

  has_many :questions,  dependent: :destroy
  has_many :passed_tests, dependent: :destroy
  has_many :users, through: :passed_tests

  scope :easy, -> { where(level: 0..1)}
  scope :middle, -> { where(level: 2..4)}
  scope :hard, -> { where(level: 5..Float::INFINITY)}
  scope :test_by_category, -> (category) {
    joins(:category).where(categories: {title: category}).order(title: :desc).pluck(:title) }
  scope :by_level, -> (level) { where(level: level) }

  validates :title, presence: true, uniqueness: { scope: :level,
    message: "Ошибка! Название и уровень теста должны быть уникальными" }
  validates :level, numericality: { only_integer: true, greater_than: 0 }
end
