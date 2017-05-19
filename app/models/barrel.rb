class Barrel < ActiveRecord::Base
  belongs_to :wine_sort
  validates :location,:manufacture_date,:amount,:empty_or_not,:date_of_completion, presence: true
  validates :amount, numericality: {greater_than_or_equal_to: 0 }
end
