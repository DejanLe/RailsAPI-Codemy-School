class User < ApplicationRecord
  acts_as_token_authenticatable

  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  before_save :ensure_authentication_token

  has_many :accounts, foreign_key: :owner_id
end
