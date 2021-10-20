class CreateKeeps < ActiveRecord::Migration[6.1]
  def change
    create_table :keeps do |t|
      t.references :user, null: false, foreign_key: true
      t.references :gym, null: false, foreign_key: true

      t.timestamps
    end
    add_index :keeps, %i[user_id gym_id], unique: true
  end
end
