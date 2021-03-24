class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  with_options presence: true do
  validates :email, uniqueness: true
  validates :password, length: { minimum: 6 }, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
  validates :full_name
  validates :birthday
  validates :genre
  validates :profile
  end

  has_many :works
  has_one_attached :image
end
