class Employee < ActiveRecord::Base

  # establish relationship to store table
  belongs_to :store

  # define validations to be checked
  validates_associated :store             #store is assoicated with employee?
  validates :first_name, presence: true   #first name?
  validates :last_name, presence: true    #last name?
  validates :hourly_rate,                 # hourly rate is a number between 40 and 200?
    presence: true, 
    numericality: { only_integer: true, greater_than: 40, less_than: 200 }
end
