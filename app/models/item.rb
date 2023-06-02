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
  validates :price,               presence: true, numericality: { with: /\A[0-9]+\z/}
  validates :condition_id,        presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :shipping_charge_id,  presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :area_id,             presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :delivery_time_id,    presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :category_id,         presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :user,                presence: true
  validates :image,               presence: true



end
