class CreateMurders < ActiveRecord::Migration[5.1]
  def change
    create_table :murders do |t|
      t.string :locality
      t.integer :body_count
      t.text :description

      t.timestamps
    end
  end
end
