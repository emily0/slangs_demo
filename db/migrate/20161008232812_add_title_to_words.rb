class AddTitleToWords < ActiveRecord::Migration[5.0]
  def change
    add_column :words, :title, :string
  end
end
