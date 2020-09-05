require 'rails_helper'
describe Address do
  describe '#create' do

    it "prefecture_id(都道府県), city（市町村区）, address(番地), post_code(郵便番号)が存在すれば登録できる" do
      address = build(:address)
      expect(address).to be_valid
    end

    it "prefecture_id(都道府県)がない場合は登録できない" do
      address = build(:address, prefecture_id: nil)
      address.valid?
      expect(address.errors[:prefecture_id]).to include("を入力してください")
    end

    it "city（市町村区）がない場合は登録できない" do
      address = build(:address, city: nil)
      address.valid?
      expect(address.errors[:city]).to include("を入力してください")
    end

    it "address(番地)がない場合は登録できない" do
      address = build(:address, address: nil)
      address.valid?
      expect(address.errors[:address]).to include("を入力してください")
    end

    # post_code（郵便番号）に関わるテストコード
    it "post_codeがない場合は登録できない" do
      address = build(:address, post_code: nil)
      address.valid?
      expect(address.errors[:post_code]).to include("を入力してください")
    end

    # it "post_codeは9文字以上だと登録できない" do
    #   address = build(:address, post_code: "123456789")
    #   address.valid?
    #   expect(address.errors[:post_code]).to include("は不正な値です")
    # end

    it "post_codeは8文字以下では登録できる" do
      address = build(:address, post_code: "123-5678")
      expect(address).to be_valid
    end
  end
end