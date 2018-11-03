class CreateGenders < ActiveRecord::Migration[5.1]
  def change
    create_table :genders do |t|
      t.string :locality
      t.string :gtype
      t.text :criminal_complaint
      t.integer :body_count

      t.timestamps
    end
  end
end
