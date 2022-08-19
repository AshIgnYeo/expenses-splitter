class CreateInvites < ActiveRecord::Migration[7.0]
  def change
    create_table :invites do |t|
      t.references :user, null: true, foreign_key: true
      t.references :friend, null: true
      t.boolean :accepted, default: false

      t.timestamps
    end

    add_foreign_key :invites, :users, column: 'friend_id', on_delete: :cascade
  end
end
