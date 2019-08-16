class Ingredient < ApplicationRecord
  INGREDIENTS = Ingredient.all
  has_many :doses
  has_many :cocktails, through: :doses
  validates :name, presence: true, uniqueness: true, inclusion: { in: INGREDIENTS }
end
