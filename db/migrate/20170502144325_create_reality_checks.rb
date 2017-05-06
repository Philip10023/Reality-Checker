class CreateRealitychecks < ActiveRecord::Migration[5.0]
  def change
    create_table :realitychecks do |t|
      t.string :check, null: false
      t.interger :realitycheck_id, null: false
      t.interger :user_id, null: false
      t.interger :category_id, null: false

      t.timestamps
    end
  end
end
