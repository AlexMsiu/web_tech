class CreateRatioOfVarieties < ActiveRecord::Migration
  def change
    create_table :ratio_of_varieties do |t|
      t.string :ratio
      t.references :grape_sort, index: true, foreign_key: true
      t.references :wine_sort, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
