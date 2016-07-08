class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :trackable, :validatable,
         :recoverable, :rememberable,  :omniauthable, :omniauth_providers => [:facebook]
  has_many :authorizations
  has_many :reviews

  def self.find_for_oauth(auth, current_user=nil)
    authorization = Authorization.find_for_oauth(auth)
    return authorization.user if authorization

    email = auth.info.email
    return User.new unless email

    user = User.find_by_email(email)
    if user.nil?
      password = Devise.friendly_token[0,10]
      user = User.create!(email: email, password: password, password_confirmation: password)
    end

    user.authorizations.create(provider: auth.provider, uid: auth.uid.to_s)
    user
  end

  def create_authorization(auth)
    authorizations.find_or_create_by(uid: auth.uid, provider: auth.provider)
  end
end
