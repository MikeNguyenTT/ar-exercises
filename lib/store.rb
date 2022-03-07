class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validate :at_least_men_or_women

  def at_least_men_or_women
    errors.add(:base, "The new store must sell at least men or women apparel") unless mens_apparel == true || womens_apparel == true
  end
end