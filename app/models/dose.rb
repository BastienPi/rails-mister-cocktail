class Dose < ApplicationRecord
  belongs_to :ingredient #-> { order (name: :asc)}
  belongs_to :cocktail

  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end
