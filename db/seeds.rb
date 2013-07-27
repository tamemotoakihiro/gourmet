User.delete_all
User.create([
  {name: '狩りガール' , mail: 'kari_girl@mango_goten.com' , description: '狩りガール'} ,
  {name: 'カリタロー' , mail: 'kari_taro@chinsuko.com'    , description: 'カリタロー'} ,
])

Shop.delete_all
Shop.create([
  {name: '天すけ', url: 'http://tabelog.com/tokyo/A1319/A131904/13010553/'}
])

Review.delete_all
Review.new(content: 'うまい').tap do |review|
  review.author = User.last
  review.shop   = Shop.first
end.save!
