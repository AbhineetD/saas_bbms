class Contact < ActiveRecord::Base
  validates :name, presence: true  
  validates :age, presence: true
  validates :sex, presence: true
  validates :dob, presence: true
  validates :fathers_name, presence: true
  #validates :occupation, presence: true
  #validates :organisation, presence: true
  validates :address, presence: true
  #validates :email, presence: true
  validates :phone, presence: true
  
end