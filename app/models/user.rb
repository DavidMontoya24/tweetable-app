class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Validations
  validates :username, presence: true, uniqueness: true
  validates :name, presence: true
  # Association
  has_many :tweets, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_one_attached :avatar
end
