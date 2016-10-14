class Type < ApplicationRecord
  has_many :word_types
  has_many :words, through: :word_types
  validates :name, presence: true, length: { minimum: 3, maximum: 25 }
  validates_uniqueness_of :name
end
