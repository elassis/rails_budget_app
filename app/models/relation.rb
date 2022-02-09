class Relation < ApplicationRecord
  belongs_to :group
  belongs_to :expense

  validates :group_id, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :expense_id, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
