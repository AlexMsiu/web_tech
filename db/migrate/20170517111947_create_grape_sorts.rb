class CreateGrapeSorts < ActiveRecord::Migration
  def change
    create_table :grape_sorts do |t|
      t.string :name
      t.string :place
      t.date :date_of_collection

      t.timestamps null: false
    end
  end
end
