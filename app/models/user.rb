class User < ActiveRecord::Base
  has_many :reviews, foreign_key: 'author_id'

  def self.from_omniauth(auth)
    user = where(auth.slice('provider', 'uid')).first || create_from_omniauth(auth)
    user
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.name = auth['info']['nickname']
    end
  end
end
