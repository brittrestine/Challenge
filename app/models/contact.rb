class Contact < ApplicationRecord
  validates :email, {uniqueness: true}

  def birthday_format
    date = DateTime.parse(birthdate)
    date.strftime("%B %d, %Y")
  end

end
