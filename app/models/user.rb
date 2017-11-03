class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User
  

  protected
  def confirmation_required? #does not require email confirmation - https://github.com/plataformatec/devise/wiki/How-To:-Add-:confirmable-to-Users
    false
  end
end
