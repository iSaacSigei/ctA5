class User < ApplicationRecord
    has_secure_password
    has_many :import_orders
    has_many :export_orders
    # Validations
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }, if: -> { new_record? || !password.nil? }
  end
  