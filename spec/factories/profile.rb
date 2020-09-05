FactoryBot.define do

  factory :profile do
    birth_date { "2020-01-11" }
    first_name { "鈴木" }
    last_name { "一郎" }
    first_kana { "スズキ" }
    last_kana {"イチロウ"}
    phone {"090-1234-5678"}
  end
  
end