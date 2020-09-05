FactoryBot.define do
  factory :address do
    post_code { "111-1111" }
    prefecture_id { 1 }
    city { "大阪市難波区" }
    address { "1234-1" }
    apartment {"難波ビル5-55"}
  end
end