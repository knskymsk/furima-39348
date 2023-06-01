class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string     :name,                null: false
      t.text       :description,         null: false
      t.integer    :price,               null: false  
      t.integer    :condition_id,        null: false 
      t.integer    :shipping_charge_id,  null: false 
      t.integer    :area_id,             null: false 
      t.integer    :delivery_time_id,    null: false 
      t.integer    :category_id,         null: false 
      t.references :user,                null: false, foreign_key: true
      t.timestamps

      #t.index [ :key ], unique: true
    end
    #add_index :users, :email, unique: true
  end
end
