class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :company
      t.string :small_image
      t.string :large_image
      t.string :email
      t.string :birthdate
      t.boolean :favorite
      t.string :street_address
      t.string :city
      t.string :state_address
      t.string :country
      t.string :zipcode
      t.string :work_phone
      t.string :home_phone
      t.string :mobile_phone

      t.timestamps
    end
  end
end
