class CreateTransfers < ActiveRecord::Migration[7.0]
  def change
    create_table :transfers do |t|
      t.float :amount
      t.boolean :settled, default: false
      t.references :event, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :friend, null: false

      t.timestamps
    end

    add_foreign_key :transfers, :users, column: 'friend_id'
  end
end
