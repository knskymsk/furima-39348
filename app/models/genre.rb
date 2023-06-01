class Genre < ActiveHash::Base
  self.data = [
    { id: 1,  category: '---' },
    { id: 2,  category: 'メンズ' },
    { id: 3,  category: 'レディース' },
    { id: 4,  category: 'ベビー・キッズ' },
    { id: 5,  category: 'インテリア・住まい・小物' },
    { id: 6,  category: '本・音楽・ゲーム' },
    { id: 7,  category: 'おもちゃ・ホビー・グッズ' },
    { id: 8,  category: '家電・スマホ・カメラ' },
    { id: 9,  category: 'スポーツ・レジャー' },
    { id: 10, category: 'ハンドメイド' },
    { id: 11, category: 'その他' },

    { id: 1, condition: '---' },
    { id: 2, condition: '新品・未使用' },
    { id: 3, condition: '未使用に近い' },
    { id: 4, condition: '目立った傷や汚れなし' },
    { id: 5, condition: 'やや傷や汚れあり' },
    { id: 6, condition: '傷や汚れあり' },
    { id: 7, condition: '全体的に状態が悪い' },

    { id: 1, shipping_charge: '---' },
    { id: 2, shipping_charge: '着払い(購入者負担)' },
    { id: 3, shipping_charge: '送料込み(出品者負担)' },

    {id: 1, area: '--'}, {id: 2, area: '北海道'}, {id: 3, area: '青森県'}, 
    {id: 4, area: '岩手県'}, {id: 5, area: '宮城県'}, {id: 6, area: '秋田県'}, 
    {id: 7, area: '山形県'}, {id: 8, area: '福島県'}, {id: 9, area: '茨城県'}, 
    {id: 10, area: '栃木県'}, {id: 11, area: '群馬県'}, {id: 12, area: '埼玉県'}, 
    {id: 13, area: '千葉県'}, {id: 14, area: '東京都'}, {id: 15, area: '神奈川県'}, 
    {id: 16, area: '新潟県'}, {id: 17, area: '富山県'}, {id: 18, area: '石川県'}, 
    {id: 19, area: '福井県'}, {id: 20, area: '山梨県'}, {id: 21, area: '長野県'}, 
    {id: 22, area: '岐阜県'}, {id: 23, area: '静岡県'}, {id: 24, area: '愛知県'}, 
    {id: 25, area: '三重県'}, {id: 26, area: '滋賀県'}, {id: 27, area: '京都府'}, 
    {id: 28, area: '大阪府'}, {id: 29, area: '兵庫県'}, {id: 30, area: '奈良県'}, 
    {id: 31, area: '和歌山県'}, {id: 32, area: '鳥取県'}, {id: 33, area: '島根県'}, 
    {id: 34, area: '岡山県'}, {id: 35, area: '広島県'}, {id: 36, area: '山口県'}, 
    {id: 37, area: '徳島県'}, {id: 38, area: '香川県'}, {id: 39, area: '愛媛県'}, 
    {id: 40, area: '高知県'}, {id: 41, area: '福岡県'}, {id: 42, area: '佐賀県'}, 
    {id: 43, area: '長崎県'}, {id: 44, area: '熊本県'}, {id: 45, area: '大分県'}, 
    {id: 46, area: '宮崎県'}, {id: 47, area: '鹿児島県'}, {id: 48, area: '沖縄県'}

    { id: 1, delivery_time: '---' },
    { id: 2, delivery_time: '1~2日で発送' },
    { id: 3, delivery_time: '2~3日で発送' },
    { id: 4, delivery_time: '4~7日で発送' },
  ]

  include ActiveHash::Associations
  has_many :items

  end