class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.text :body
      t.references :word, index: true
      
      t.timestamps
    end
  end
end
