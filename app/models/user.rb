class User < ApplicationRecord
  has_many :tasks
  has_one :user_role
  has_one :role, through: :user_role
end
