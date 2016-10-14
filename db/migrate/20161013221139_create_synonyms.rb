class CreateSynonyms < ActiveRecord::Migration[5.0]
  def change
    create_table :synonyms do |t|
      t.string :name
      t.references :word, index: true
      
      t.timestamps
    end
  end
end
