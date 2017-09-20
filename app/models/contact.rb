class Contact < ApplicationRecord
  validates :email, {uniqueness: true}

  def small_image?
    return true if small_image.present?
  end

  def large_image?
    return true if large_image.present?
  end

  def home_phone?
    return true if home_phone.present?
  end

  def mobile_phone?
    return true if mobile_phone.present?
  end

   def work_phone?
    return true if work_phone.present?
  end

  def address?
    return true if street_address.present?
  end

  def birthday?
    return true if birthdate.present?
  end

  def birthday_format
    date = DateTime.parse(birthdate)
    date.strftime("%B %d, %Y")
  end

  def email?
    return true if email.present?
  end

end
