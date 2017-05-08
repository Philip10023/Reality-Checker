class CreateRealities < ActiveRecord::Migration[5.0]
  def change
    create_table :realities do |t|
      t.string :check, null: false
      t.integer :user_id, null: false
      t.integer :category_id, null: false

      t.timestamps
    end
  end
end
