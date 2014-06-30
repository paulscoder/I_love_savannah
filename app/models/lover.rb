class Lover < ActiveRecord::Base
  has_many :memories
  has_one :lover
end
