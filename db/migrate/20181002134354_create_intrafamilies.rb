class CreateIntrafamilies < ActiveRecord::Migration[5.1]
  def change
    create_table :intrafamilies do |t|
      t.string :neighborhood
      t.string :victim
      t.string :aggressor
      t.text :criminal_complaint

      t.timestamps 
    end
  end
end
