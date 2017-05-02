class CreateRealityChecks < ActiveRecord::Migration[5.0]
  def change
    create_table :reality_checks do |t|
      t.string :check, null: false
      t.belongs_to :user
      t.belongs_to :category

      t.timestamps
    end
  end
end
