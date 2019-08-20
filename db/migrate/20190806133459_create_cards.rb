class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :description
      t.string :picture
      t.integer :cost
      t.string :card_type
      t.string :triggers, array: true, default: []
      t.integer :victory_points
      t.integer :value
      t.integer :draw

      t.timestamps
    end
  end
end
