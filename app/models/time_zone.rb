class TimeZone < ActiveHash::Base
  self.data = [
    { id:1, name: '---' },
    { id:2, name: 'なし'},
    { id:3, name: '朝'},
    { id:4, name:'昼'},
    { id:5, name:'夕方'},
    { id:6, name:'夜'},
    { id:7, name:'深夜'}
  ]

  include ActiveHash::Associations
  has_many :posts
end