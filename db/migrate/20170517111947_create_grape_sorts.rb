class CreateGrapeSorts < ActiveRecord::Migration
  def change
    create_table :grape_sorts do |t|
      t.string :name, null: false
      t.string :place, null: false
      t.date :date_of_collection, null: false

      t.timestamps null: false
    end
  end
end
