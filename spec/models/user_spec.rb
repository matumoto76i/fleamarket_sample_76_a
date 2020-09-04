require 'rails_helper'
describe User do
  describe '#create' do

    it "nicknameとemail、passwordとpassword_confirmationが存在すれば登録できること" do
      user = build(:user)
      expect(user).to be_valid
    end

    # ニックネームに関するテストコード
    it "nicknameがない場合は登録できないこと" do
      user = build(:user, nickname: nil)
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end

    it "nicknameが9文字以上であれば登録できないこと" do
      user = build(:user, nickname: "aaaaaaaaa")
      user.valid?
      expect(user.errors[:nickname]).to include("is too long (maximum is 8 characters)")
    end

    it "nameが8文字以下では登録できること " do
      user = build(:user, nickname: "aaaaaaaa")
      expect(user).to be_valid
    end

    # emailに関するテストコード
    it "emailがない場合は登録できないこと" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end
    


    it "emailは@がない場合は登録できないこと" do
      user = build(:user, email: kkkgmail.com)
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    it "emailはドメインがない場合は登録できないこと" do
      user = build(:user, email: kkk@gmail)
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    it " 重複したemailが存在する場合は登録できないこと " do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("has already been taken")
    end

    # passwordに関するテストコード
    it "passwordがない場合は登録できないこと" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end

    it " passwordが7文字以上であれば登録できること " do
      user = build(:user, password: "0000000", password_confirmation: "0000000")
      expect(user).to be_valid
    end

    it " passwordが6文字以下であれば登録できないこと " do
      user = build(:user, password: "000000", password_confirmation: "000000")
      user.valid?
      expect(user.errors[:password]).to include("is too short (minimum is 7 characters)")
    end

    it "passwordが存在してもpassword_confirmationがない場合は登録できないこと" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end

  end
end