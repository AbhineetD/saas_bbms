class CreateBloodBag < ActiveRecord::Migration[5.0]
  def change
    create_table :blood_bags do |t|
      t.integer :bag_number
      t.integer :segment_number
      t.string :blood_type
      t.string :blood_group
      t.string :rh_type
      t.date :date_collection
      t.date :date_expiry
      t.string :anticoagulant
      t.decimal :volume
      t.decimal :storage_temperature
      t.string :HIV
	    t.string :HBsAG
    	t.string :HCV
	    t.string :VDRL
	    t.string :MP
      t.datetime :date_time_issue
      t.timestamps
    end
  end
end
