FactoryBot.define do
  factory :address do
    post_code { "111-1111" }
    prefectures_id { 1 }
    city { "大阪市難波区" }
    address { "1234-1" }
  end
end