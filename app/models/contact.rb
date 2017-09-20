class Contact < ApplicationRecord
  # Remember to create a migration!
  validates :full_name, :email, :password_hash,{presence: true}
  validates :email, :password_hash, {uniqueness: true}
end
