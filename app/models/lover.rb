class Lover < ActiveRecord::Base
  has_many :memories
  has_one :lover

   def self.register_from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at) if auth.credentials.expires
      user.save!
    end
  end

  def partner
    self.lover || NullLover.new
  end

  def partner=(lover)
    self.lover = lover
  end
end

class NullLover
  def method_missing *args
    nil
  end
end
