class CreateNumbers < ActiveRecord::Migration[5.0]
  def change
    create_table :numbers do |t|
      t.string :work
      t.string :home
      t.string :mobile

      t.timestamps
  end
end
