class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.integer :user_id
      t.integer :position_id
      t.string :name

      t.timestamps
    end
  end
end
