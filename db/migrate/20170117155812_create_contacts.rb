class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string  :age
      t.string :sex
      t.string :dob
      t.string :fathers_name
      t.string :occupation
      t.string :organisation
      t.text :address
      t.string :email
      t.string :phone
      t.timestamps
    end
  end
end
