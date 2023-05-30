class Store < ActiveRecord::Base

  # estalbish relationship to employees table 
  has_many :employees

  # define validations to be checked
  validates :name, length: { minimum: 3 }
  validates :annual_revenue,
    presence: true,
    numericality: { only_integer: true, greater_than: 0}
    validate :carry_apparel

  # define custom validator
  def carry_apparel
    if !(mens_apparel || womens_apparel)
      errors.add(:mens_apparel, "cannot be false if womens_apparel is also false")
      errors.add(:womens_apparel, "cannot be false if mens_apparel is also false")
    end
  end
end
