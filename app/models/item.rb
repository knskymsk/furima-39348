class Item < ApplicationRecord
  #extend ActiveHash::Associations::ActiveRecordExtensions

  validates :name,                presence: true
  validates :description,         presence: true
  validates :price,               presence: true
  validates :condition_id,        presence: true
  validates :shipping_charge_id,  presence: true
  validates :area_id,             presence: true
  validates :delivery_time_id,    presence: true
  validates :category_id,         presence: true
  validates :user,                presence: true
  validates :image,               presence: true


  has_one_attached :image
end
