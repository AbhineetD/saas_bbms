class CreateBloodBag < ActiveRecord::Migration[5.0]
  def change
    create_table :blood_bags do |t|
      t.string :bag_number
      t.string :segment_number
      t.string :blood_type
      t.string :blood_group
      t.string :rh_type
      t.string :date_collection
      t.string :date_expiry
      t.string :anticoagulant
      t.string :volume
      t.string :storage_temperature
      t.string :HIV
	    t.string :HBsAG
    	t.string :HCV
	    t.string :VDRL
	    t.string :MP
      t.string :date_issue
      t.string :time_issue
      t.timestamps
    end
  end
end
