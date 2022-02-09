class Group < ApplicationRecord
  belongs_to :user
  has_many :relation
  has_and_belongs_to_many :expense
  validates :name, presence: true
  validates :icon, presence: true

  def expenses_total
    Relation.includes(:group).where(group_id: id).count
  end

  def show_expenses
    relation.includes(:expense).where(group_id: id).order(created_at: :desc)
  end
end
