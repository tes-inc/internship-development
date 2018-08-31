class Favorite < ApplicationRecord
  validates :name, presence: true
  validates :year, presence: true , numericality: {greater_than_or_equal_to: 1900,less_than_or_equal_to:2100}
  validates :month, presence: true, numericality: {less_than: 13}
  validates :day, presence: true, numericality: {less_than: 32}
  validates :sex, presence: true
end
