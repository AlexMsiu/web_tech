class CreateBarrels < ActiveRecord::Migration
  def change
    create_table :barrels do |t|
      t.string :location
      t.date :manufacture_date
      t.float :amount
      t.string :empty_or_not
      t.date :date_of_completion
      t.references :wine_sort, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
