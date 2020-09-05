require 'rails_helper'
describe Profile do
  describe '#create' do

    it "birth_date(生年月日), first_name（性）, last_name(名), first_kana(性のフリガナ), last_kana(名のフリガナ)が存在すれば登録できる" do
      profile = build(:profile)
      expect(profile).to be_valid
    end

    it 'birth_dateがないと登録できない' do
      profile = build(:profile, birth_date: nil)
      profile.valid?
      expect(profile.errors[:birth_date]).to include("を入力してください")
    end

    # first_name(性)に関するテストコード
    it 'first_nameがないと登録できない' do
      profile = build(:profile, first_name: nil)
      profile.valid?
      expect(profile.errors[:first_name]).to include("を入力してください")
    end

    it 'first_nameは全角入力でないと登録できない' do
      profile = build(:profile, first_name: "suzuki")
      profile.valid?
      expect(profile.errors[:first_name]).to include("は不正な値です")
    end

    # last_name(名)に関するテストコード
    it 'last_nameがないと登録できない' do
      profile = build(:profile, last_name: nil)
      profile.valid?
      expect(profile.errors[:last_name]).to include("を入力してください")
    end

    it 'last_nameは全角入力でないと登録できない' do
      profile = build(:profile, last_name: "suzuki")
      profile.valid?
      expect(profile.errors[:last_name]).to include("は不正な値です")
    end

    # first_kana(性の全角フリガナ)に関するテストコード
    it 'first_kanaがないと登録できない' do
      profile = build(:profile, first_kana: nil)
      profile.valid?
      expect(profile.errors[:first_kana]).to include("を入力してください")
    end

    it 'first_kanaは全角カタカナでないと登録できない' do
      profile = build(:profile, first_kana: "すずき")
      profile.valid?
      expect(profile.errors[:first_kana]).to include("は不正な値です")
    end

    # last_kana(名の全角フリガナ)
    it 'last_kanaがないと登録できない' do
      profile = build(:profile, last_kana: nil)
      profile.valid?
      expect(profile.errors[:last_kana]).to include("を入力してください")
    end

    it 'last_kanaは全角カタカナでないと登録できない' do
      profile = build(:profile, last_kana: "いちろう")
      profile.valid?
      expect(profile.errors[:last_kana]).to include("は不正な値です")
    end

    # phone(電話番号)に関するテストコード
    it 'phoneは半角数字,半角記号でないと登録できない' do
      profile = build(:profile, phone: "あ090-1234-12")
      profile.valid?
      expect(profile.errors[:phone]).to include("は不正な値です")
    end
  end
end