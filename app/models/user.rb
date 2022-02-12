class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :posts

  has_one_attached :avatar

  def avatar_thumbnail
    if avatar.attached?
        avatar
    else
      "/default_profile.jpg"
    end
  end

end
