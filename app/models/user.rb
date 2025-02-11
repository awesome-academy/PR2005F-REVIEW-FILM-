class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  	devise :database_authenticatable, :registerable,
  			:recoverable, :rememberable, :validatable,
  			 :omniauthable, omniauth_providers: [:facebook]
    has_many :ratings
  	has_many :comments
  	has_many :sub_comments
  	has_many :reviews, dependent: :destroy
  	has_many :watch_lists
    
	def self.from_omniauth(auth)
    result = User.where(email: auth.info.email).first
    if result
      return result
    else
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
        user.fullname = auth.info.name
        user.image = auth.info.image
        user.uid = auth.uid
        user.provider = auth.provider

        #  If you are using confirmable and the provider(s) you use validate emails
     
      end
    end
  end

  def feed
    self.reviews
  end
end
