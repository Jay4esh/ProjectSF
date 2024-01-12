class User < ApplicationRecord
  belongs_to :role
  belongs_to :companies
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  # enum role: %i[super_admin admin normal_user]
  # after_initialize :set_default_role, if: :new_record?
  # # set default role to user  if not set
  # def set_default_role
  #   self.role ||= :user
  # end
end
