class Contact < ApplicationRecord
  attr_reader :name, :company, :small_image, :large_image, :email, :birthdate, :favorite, :street, :city, :state_address, :country, :zipcode, :work_phone, :home_phone, :mobile_phone

  validates :email, {uniqueness: true}

  def no_small_image?
     return false if (self.small_image == "") || (self.small_image == nil)
  end

  def home_phone?
    return false if (self[:home_phone] == "") || (self[:home_phone] == nil)
  end

   def mobile_phone?
    return true if !(self[:moble_phone] == "") || !(self[:moble_phone] == nil)
  end

end
