# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 親のパス
ladys = Category.create(:name=>"レディース")
mens = Category.create(:name=>"メンズ")
baby_kids = Category.create(:name=>"ベビー・キッズ")
interior = Category.create(:name=>"インテリア・住まい・小物")
book = Category.create(:name=>"本・音楽・ゲーム")
hobby = Category.create(:name=>"おもちゃ・ホビー・グッズ")
cosme = Category.create(:name=>"コスメ・香水・美容")
appliances = Category.create(:name=>"家電・スマホ・カメラ")
sports = Category.create(:name=>"スポーツ・レジャー")
hand_made = Category.create(:name=>"ハンドメイド")
tickets = Category.create(:name=>"チケット")
nicycle = Category.create(:name=>"自動車・オートバイ")
other = Category.create(:name=>"その他")