class Lover < ActiveRecord::Base
  has_many :memories
  has_one :lover, as: :partner

   def self.check_from_omniauth(auth)
    user = where(auth.slice(:provider, :uid)).first
    if user
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at) if auth.credentials.expires
      user.save!
    end
    user
  end
end
