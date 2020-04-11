class Customer < ApplicationRecord
  has_many :orders
  has_many :tickets, through: :orders
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :name, presence: true
  validates :lastname, presence: true
end
