class Test < ApplicationRecord
  def self.test_by_category(category)
    joins(:category).where(categories: { title: category }).order(title: :desc)
  end
end
