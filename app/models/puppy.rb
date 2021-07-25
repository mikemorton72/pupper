class Puppy < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true
  validates :age, numericality: true
  validates :breed, presence: true

end
