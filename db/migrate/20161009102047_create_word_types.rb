class CreateWordTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :word_types do |t|
      t.integer :word_id
      t.integer :type_id
    end
  end
end
