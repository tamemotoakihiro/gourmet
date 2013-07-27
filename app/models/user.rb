class User < ActiveRecord::Base
  def self.from_omniauth(auth)
    require 'pry-remote'; binding.pry_remote
    user = where(auth.slice('provider', 'uid')).first || create_from_omniauth(auth)
    #user.send :update_credentials, auth['credentials'] if user
    user
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.name = auth['info']['nickname']
    end
  end
  private

  def update_credentials(credentials)
    #if self.token != credentials['token']
    #  self.token = credentials['token']
    #  save!
    #end
  end
end
