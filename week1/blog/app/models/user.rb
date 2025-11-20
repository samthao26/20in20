class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # sam@example.com -> self.email.split('@') -> ["sam", "example.com"] -> [0] -> "sam".capitalize -> "Sam"
  def username
    return email.split('@')[0].capitalize
  end
end
