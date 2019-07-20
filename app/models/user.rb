class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :projects

  def superadmin?
    self.role == "superadmin"
  end

  def admin?
    ["admin", "superadmin"].include? self.role
  end
end
