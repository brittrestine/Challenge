class Contact < ApplicationRecord
  validates :email, {uniqueness: true}

  def birthday_format
    date = DateTime.parse(birthdate)
    date.strftime("%B %d, %Y")
  end

  def phone_format(phone_number)
    phone_number.slice!(3)
    phone_number.insert(3, ')')
    phone_number.insert(0, '(')
  end

end
