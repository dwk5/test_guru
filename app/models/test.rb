class Test < ApplicationRecord
  belongs_to :category

  def self.test_by_category(category)
    joins(:category).where(categories: { title: category }).order(title: :desc).pluck(:title)
  end
end
