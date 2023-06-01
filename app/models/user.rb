class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :expenses, dependent: :destroy
  has_many :groups, foreign_key: :author_id

  validates :name, presence: true

  def email_verified?
    true
  end
end
