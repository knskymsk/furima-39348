class ManagementPurchase
  include ActiveModel::Model

  with_options presence: true do
    validates :zip_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: 'is invalid. Include hyphen(-)' }
    validates :area_id, numericality: { other_than: 0, message: "can't be blank" }
    validates :city
    validates :address
    #validates :building_name
    validates :phone_number, format: { with: /\A[0-9]{11}\z/, message: 'is invalid' }
    validates :user_id
    validates :item_id
    validates :token
  end

  def save
    management = Management.create(user_id: user_id, item_id: item_id)
    Purchase.create(management_id: management.id, zip_code: zip_code, area_id: area_id, city: city, address: address, building_name: building_name, phone_number: phone_number)
  end
end