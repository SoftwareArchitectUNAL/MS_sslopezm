class CreateStreets < ActiveRecord::Migration[5.1]
  def change
    create_table :streets do |t|
      t.string :locality
      t.string :stype
      t.integer :body_count
      t.text :description

      t.timestamps
    end
  end
end
