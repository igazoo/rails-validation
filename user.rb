class User < ApplicationRecord
    validates :name, presence: true,
    length: {maximum:15}
    
  validates :email, presence: true,
  format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  
  
  has_secure_password
   validates :password,
  presence: true,
  length: {minimum:8,maximum:32},
  format: { with: /\A[a-z0-9]+\z/i }
end
