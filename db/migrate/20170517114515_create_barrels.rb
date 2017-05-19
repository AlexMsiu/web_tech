class CreateBarrels < ActiveRecord::Migration
  def change
    create_table :barrels do |t|
      t.string :location, null: false
      t.date :manufacture_date, null: false
      t.float :amount, null: false
      t.string :empty_or_not, null: false
      t.date :date_of_completion, null: false
      t.references :wine_sort, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
