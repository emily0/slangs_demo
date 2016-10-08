class CreateWords < ActiveRecord::Migration[5.0]
  def change
    create_table :words do |t|
      t.string :chinese
      t.string :pinyin
      t.text :meaning
      t.text :exampleUsage
      t.float :funny
      t.float :useful

      t.timestamps
    end
  end
end
