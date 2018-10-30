class Test < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :author, class_name: "User", foreign_key: :user_id, optional: true

  has_many :questions,  dependent: :destroy
  has_many :test_passages, dependent: :destroy
  has_many :users, through: :test_passages

  scope :by_level, -> (level) { where(level: level) }
  scope :easy, -> { by_level.where(level: 0..1)}
  scope :middle, -> { by_level.where(level: 2..4)}
  scope :hard, -> { by_level.where(level: 5..Float::INFINITY)}
  scope :category, -> (category) {
    joins(:category).where(categories: {title: category}) }

  validates :title, presence: true, uniqueness: { scope: :level,
    message: "Ошибка! Название и уровень теста должны быть уникальными" }
  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def self.by_category(category)
    category(category).order(title: :desc).pluck(:title)
  end
end
