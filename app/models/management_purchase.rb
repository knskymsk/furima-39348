class ManagementPurchase
  include ActiveModel::Model
  attr_accessor :zip_code, :area_id, :city, :address, :building_name, :phone_number, :management_id, :user_id, :item_id

  with_options presence: true do
    validates :zip_code
    validates :area_id
    validates :city
    validates :address
    validates :building_name
    validates :phone_number
    validates :user_id
    validates :item_id
  end

  def save
    management = Management.create(user_id: user_id, item_id: item_id)
    Purchases.create(zip_code: zip_code, area_id: area_id, city: city, address: address, building_name: building_name, phone_number: phone_number, phone_number: phone_number)
  end
end