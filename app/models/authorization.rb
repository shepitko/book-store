class Authorization < ApplicationRecord
  belongs_to :user

  def self.find_for_oauth(auth)
    find_by(provider: auth.provider, uid: auth.uid)
  end
end
