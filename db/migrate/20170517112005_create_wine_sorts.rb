class CreateWineSorts < ActiveRecord::Migration
  def change
    create_table :wine_sorts do |t|
      t.string :name, null: false
      t.string :wine, null: false
      t.integer :time_in_the_barrel, null: false
      t.integer :time_in_the_bottel, null: false

      t.timestamps null: false
    end
  end
end
