class CreateWeapons < ActiveRecord::Migration[5.1]
  def change
    create_table :weapons do |t|
      t.string :name
      t.integer :category_id
      t.decimal :caliber
      t.text :description

      t.timestamps
    end
  end
end
