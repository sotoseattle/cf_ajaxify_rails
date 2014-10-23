class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :something
      t.string :somewhat
      t.string :and_yet
      t.string :whatever
      t.integer :and_a_number

      t.timestamps null: false
    end
  end
end
