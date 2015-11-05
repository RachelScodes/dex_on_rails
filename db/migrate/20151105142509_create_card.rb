class CreateCard < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.string :avatar
      t.integer :accuracy
      t.integer :health

      # Attack 1 info
      t.string :atk1_name
      t.float :atk1_power
      t.string :atk1_type

      # Attack 2 info
      t.string :atk2_name
      t.float :atk2_power
      t.string :atk2_type

      # Defense info
      t.string :def_name
      t.float :def_regen
      t.string :def_type

      t.references :deck, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
