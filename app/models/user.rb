class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :group
  has_many :expense

  validates :name, presence: true

  def all_categories(id)
    # @current_user = current_user
    Group.includes(:user).where("user_id = #{id}")
  end
end
