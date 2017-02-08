class BloodGroup < ActiveRecord::Base
  # BloodGroup form validations 
  validates :bag_number, presence: true  
  validates :segment_number, presence: true
  validates :blood_type, presence: true
  validates :blood_group, presence: true
  validates :rh_type, presence: true
  validates :date_collection, presence: true
  validates :date_expiry, presence: true
  validates :volume, presence: true
  validates :storage_temperature, presence: true
  validates :HIV, presence: true
  validates :HBsAG, presence: true
  validates :HCV, presence: true
  validates :VDRL, presence: true
  validates :MP, presence: true
  validates :date_issue, presence: true
  validates :time_issue, presence: true
  
  belongs_to :contact
  
end