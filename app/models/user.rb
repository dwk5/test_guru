class User < ApplicationRecord

  EMAIL_FORMAT = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
        :registerable,
        :recoverable,
        :rememberable,
        :validatable,
        :trackable,
        :confirmable

  has_many :test_passages
  has_many :tests, through: :test_passages
  has_many :author_tests, class_name: "Test", foreign_key: "author_id"

  validates :email, presence: true, uniqueness: true, format: { with: EMAIL_FORMAT,
    on: :create, message: "проверьте формат ввода email" }

  def test_by_level(level)
   tests.where(level: level)
  end

  def test_passage(test)
    test_passages.order(id: :desc).find_by(test_id: test.id)
  end

  def admin?
    instance_of?(Admin)
  end

end
