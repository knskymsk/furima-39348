require 'rails_helper'

RSpec.describe ManagementPurchase, type: :model do
  before do
    @management_purchase = FactoryBot.build(:management_purchase)
  end

  describe '配送先情報の保存' do
    context '配送先情報の保存ができるとき' do
      it 'すべての値が正しく入力されていれば保存できること' do
        expect(@management_purchase).to be_valid
      end
      it 'user_idが空でなければ保存できる' do
        @management_purchase.user_id = 1
        expect(@management_purchase).to be_valid
      end
      it 'item_idが空でなければ保存できる' do
        @management_purchase.item_id = 1
        expect(@management_purchase).to be_valid
      end
      it '郵便番号が「3桁+ハイフン+4桁」の組み合わせであれば保存できる' do
        @management_purchase.zip_code = '123-4560'
        expect(@management_purchase).to be_valid
      end
      it '都道府県が「---」以外かつ空でなければ保存できる' do
        @management_purchase.area_id = 1
        expect(@management_purchase).to be_valid
      end
      it '市区町村が空でなければ保存できる' do
        @management_purchase.city = '大牟田市'
        expect(@management_purchase).to be_valid
      end
      it '番地が空でなければ保存できる' do
        @management_purchase.address = '歴木１２３'
        expect(@management_purchase).to be_valid
      end
      it '建物名が空でも保存できる' do
        @management_purchase.building_name = nil
        expect(@management_purchase).to be_valid
      end
      it '電話番号が11番桁以内かつハイフンなしであれば保存できる' do
        @management_purchase.phone_number = 12_345_678_910
        expect(@management_purchase).to be_valid
      end
    end

    context '配送先情報の保存ができないとき' do
      it 'user_idが空だと保存できない' do
        @management_purchase.user_id = nil
        @management_purchase.valid?
        expect(@management_purchase.errors.full_messages).to include("User can't be blank")
      end
      it 'item_idが空だと保存できない' do
        @management_purchase.item_id = nil
        @management_purchase.valid?
        expect(@management_purchase.errors.full_messages).to include("Item can't be blank")
      end
      it '郵便番号が空だと保存できないこと' do
        @management_purchase.zip_code = nil
        @management_purchase.valid?
        expect(@management_purchase.errors.full_messages).to include("Zip code can't be blank", 'Zip code is invalid. Include hyphen(-)')
      end
      it '郵便番号にハイフンがないと保存できないこと' do
        @management_purchase.zip_code = 1_234_567
        @management_purchase.valid?
        expect(@management_purchase.errors.full_messages).to include('Zip code is invalid. Include hyphen(-)')
      end
      it '都道府県が「---」だと保存できないこと' do
        @management_purchase.area_id = 0
        @management_purchase.valid?
        expect(@management_purchase.errors.full_messages).to include("Area can't be blank")
      end
      it '都道府県が空だと保存できないこと' do
        @management_purchase.area_id = nil
        @management_purchase.valid?
        expect(@management_purchase.errors.full_messages).to include("Area can't be blank")
      end
      it '市区町村が空だと保存できないこと' do
        @management_purchase.city = nil
        @management_purchase.valid?
        expect(@management_purchase.errors.full_messages).to include("City can't be blank")
      end
      it '番地が空だと保存できないこと' do
        @management_purchase.address = nil
        @management_purchase.valid?
        expect(@management_purchase.errors.full_messages).to include("Address can't be blank")
      end
      it '電話番号が空だと保存できないこと' do
        @management_purchase.phone_number = nil
        @management_purchase.valid?
        expect(@management_purchase.errors.full_messages).to include("Phone number can't be blank")
      end
      it '電話番号にハイフンがあると保存できないこと' do
        @management_purchase.phone_number = '123 - 1234 - 1234'
        @management_purchase.valid?
        expect(@management_purchase.errors.full_messages).to include('Phone number is invalid')
      end
      it '電話番号が12桁以上あると保存できないこと' do
        @management_purchase.phone_number = 12_345_678_910_123_111
        @management_purchase.valid?
        expect(@management_purchase.errors.full_messages).to include('Phone number is invalid')
      end
      it '電話番号が9桁以下であると保存できないこと' do
        @management_purchase.phone_number = 12_345_678
        @management_purchase.valid?
        expect(@management_purchase.errors.full_messages).to include('Phone number is invalid')
      end
      it 'トークンが空だと保存できないこと' do
        @management_purchase.token = nil
        @management_purchase.valid?
        expect(@management_purchase.errors.full_messages).to include("Token can't be blank")
      end
    end
  end
end
