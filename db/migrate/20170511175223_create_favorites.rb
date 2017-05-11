class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.string :favreality, null: false
      t.belongs_to :user
      t.belongs_to :reality
      t.timestamps
    end
  end
end
