class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  belongs_to :groups

  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :name, presence: true
end
