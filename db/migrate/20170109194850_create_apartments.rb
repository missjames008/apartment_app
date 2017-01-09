class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :street1
      t.string :street2
      t.string :city
      t.string :postal
      t.string :state
      t.string :country
      t.string :name
      t.string :phone
      t.string :hours

      t.timestamps null: false
    end
  end
end
