class CreateTimers < ActiveRecord::Migration[5.0]
  def change
    create_table :timers do |t|
      t.integer :rate, default: 0, null: false
      t.belongs_to :user
      t.belongs_to :category
      t.timestamps
    end
  end
end
