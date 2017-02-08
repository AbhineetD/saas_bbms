class AddBloodBagsToContact < ActiveRecord::Migration[5.0]
  def change
    add_column :blood_bags, :contact_id, :integer
  end
end
