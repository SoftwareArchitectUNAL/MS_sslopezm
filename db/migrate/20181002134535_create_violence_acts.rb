class CreateViolenceActs < ActiveRecord::Migration[5.1]
  def change
    create_table :violence_acts do |t|
      t.string :act_type
      t.references :street, foreign_key: true
      t.references :gender, foreign_key: true
      t.references :intrafamily, foreign_key: true
      t.references :murder, foreign_key: true

      t.timestamps
    end
  end
end
