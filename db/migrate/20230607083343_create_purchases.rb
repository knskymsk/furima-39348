class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.string     :zip_code,        null: false
      t.integer    :area_id,         null: false
      t.string     :city,            null: false
      t.string     :address,         null: false
      t.string     :building_name
      t.string     :phone_number,    null: false
      t.references :management,   null: false, foreign_key: true
      t.timestamps
    end
  end
end
