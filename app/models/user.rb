class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:omniauthable,
         :omniauth_providers =>[:facebook]

validates :username, presence: true, uniqueness: true, length: {in: 3..10}
validate :validate_username_regex

private
  def validate_username_regex
    unless username =~/\A[a-zA-Z]*[a-zA-Z][a-zA-Z0-9_]*\z/
      errors.add(username,"El username debe iniciar con una letra")
    end
  end
end
