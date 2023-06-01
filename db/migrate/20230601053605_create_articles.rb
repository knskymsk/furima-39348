class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string     :title,               null: false
      t.text       :text,                null: false
      t.integer    :genre_id,            null: false
      #t.integer    :category_id,         null: false
      #t.integer    :condition_id,        null: false
      #t.integer    :shipping_charge_id,  null: false 
      #t.integer    :area_id,             null: false
      #t.integer    :delivery_time_id,    null: false
      #t.references :user,                null: false, foreign_key: true
      t.timestamps
    end
  end
end
