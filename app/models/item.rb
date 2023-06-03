class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  has_one_attached :image
  belongs_to :category
  belongs_to :condition
  belongs_to :shipping_charge
  belongs_to :area
  belongs_to :delivery_time
  belongs_to :user


  validates :name,                presence: true
  validates :description,         presence: true
  validates :price,               presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }
  validates :condition_id,        presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :shipping_charge_id,  presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :area_id,             presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :delivery_time_id,    presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :category_id,         presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :image,               presence: true


end
