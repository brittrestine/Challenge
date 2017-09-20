class Contact < ApplicationRecord
  attr_reader :name, :company, :small_image, :large_image, :email, :birthdate, :favorite, :street, :city, :state_address, :country, :zipcode, :work_phone, :home_phone, :mobile_phone

  validates :email, {uniqueness: true}

  def has_small_image
    if self.small_image == "" || self.small_image == nil

  end

end
