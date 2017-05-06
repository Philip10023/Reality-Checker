class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :title, null: false
      t.string :description
      t.has_many :reality_checks

      t.timestamps
    end
  end
end
