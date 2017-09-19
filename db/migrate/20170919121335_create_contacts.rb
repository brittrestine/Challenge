class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.string :company
      t.string :small_image
      t.string :email
      t.string :birthdate
      t.boolean :favorite

      t.timestamps
  end
end
