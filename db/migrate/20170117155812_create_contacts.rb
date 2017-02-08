class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.integer  :age
      t.string :sex
      t.date :dob
      t.string :fathers_name
      t.string :occupation
      t.string :organisation
      t.text :address
      t.string :email
      t.string :phone
      t.integer :weight
      t.string :bp
      t.integer :pulse
      t.decimal :temperature
      t.decimal :hb
      t.string :accept
      t.string :patient_relation
      t.timestamps
    end
  end
end
