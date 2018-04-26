class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:omniauthable,
         :omniauth_providers =>[:facebook]

validates :username, presence: true, uniqueness: true, length: {in: 3..10}
validates :email, presence: true, uniqueness: true

end
