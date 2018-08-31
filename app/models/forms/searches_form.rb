module Forms
  class Searches_form
    include ActiveModel::Model

    attr_accessor :year, :month, :day, :sex

    validates :year, presence: true , numericality: {less_than: 2100}
    validates :month, presence: true, numericality: {less_than: 13}
    validates :day, presence: true, numericality: {less_than: 32}
    validates :sex, presence: true
  end
end
