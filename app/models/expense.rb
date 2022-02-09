class Expense < ApplicationRecord
  belongs_to :user
  has_many :relation
  has_and_belongs_to_many :group

  validates :name, presence: true
  validates :amount, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
