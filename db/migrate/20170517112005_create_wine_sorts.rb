class CreateWineSorts < ActiveRecord::Migration
  def change
    create_table :wine_sorts do |t|
      t.string :name
      t.string :wine
      t.integer :time_in_the_barrel
      t.integer :time_in_the_bottel

      t.timestamps null: false
    end
  end
end
