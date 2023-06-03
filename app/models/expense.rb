class Expense < ApplicationRecord
  belongs_to :author, foreign_key: :author_id, class_name: 'User'
  belongs_to :groups

  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :name, presence: true

  has_many :expense_groups, dependent: :destroy
  has_many :groups, through: :expense_groups, dependent: :destroy
end
