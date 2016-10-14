class Word < ApplicationRecord
  has_many :types, through: :word_types
  has_many :word_types
  has_many :synonyms, dependent: :destroy
  has_many :notes, dependent: :destroy
  has_many :examples, dependent: :destroy
  ratyrate_rateable 'visual_effects', 'original_score', 'director', 'custome_design'
  ratyrate_rater
end
