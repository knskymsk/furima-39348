require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できる場合' do
      it "passwordとencrypted_passwordが存在すれば登録できる" do
        expect(@user).to be_valid
      end
    end
    it 'nicknameが空では登録できない' do
      @user.nickname = ''  # nicknameの値を空にする
      @user.valid?
      expect(@user.errors.full_messages).to include "Nickname can't be blank"
    end
    it 'emailが空では登録できない' do
      @user.email = ''  # emailの値を空にする
      @user.valid?
      expect(@user.errors.full_messages).to include "Email can't be blank"
    end
    it 'passwordが空では登録できない' do
      @user.password = ''  # passwordの値を空にする
      @user.valid?
      expect(@user.errors.full_messages).to include "Password can't be blank"
    end
    it 'passwordとpassword_confirmationが不一致では登録できない' do
      @user.password = '123456'
      @user.password_confirmation = '1234567'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it 'family_nameが空では登録できない' do
      @user.family_name = ''  # family_nameの値を空にする
      @user.valid?
      expect(@user.errors.full_messages).to include "Family name can't be blank"
    end
    it 'first_nameが空では登録できない' do
      @user.first_name = ''  # first_nameの値を空にする
      @user.valid?
      expect(@user.errors.full_messages).to include "First name can't be blank"
    end
    it 'family_name_katakanaが空では登録できない' do
      @user.family_name_katakana = ''  # family_name_katakanaの値を空にする
      @user.valid?
      expect(@user.errors.full_messages).to include "Family name katakana can't be blank"
    end
    it 'first_name_katakanaが空では登録できない' do
      @user.first_name_katakana = ''  # first_name_katakanaの値を空にする
      @user.valid?
      expect(@user.errors.full_messages).to include "First name katakana can't be blank"
    end
    it 'birthdayが空では登録できない' do
      @user.birthday = ''  # birthdayの値を空にする
      @user.valid?
      expect(@user.errors.full_messages).to include "Birthday can't be blank"
    end
  end
end