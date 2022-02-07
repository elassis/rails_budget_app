class User < ApplicationRecord
    has_many :Categorie
    has_many :expense

    validates :name, presence: true
end