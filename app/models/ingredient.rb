class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :cocktails
  validates :name, presence: true, uniqueness: true
end
