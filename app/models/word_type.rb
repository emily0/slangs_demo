class WordType < ActiveRecord::Base
  belongs_to :word
  belongs_to :type
end
