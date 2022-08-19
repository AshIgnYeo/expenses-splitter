class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.string :name
      t.text :description
      t.integer :gst
      t.integer :service_charge
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
