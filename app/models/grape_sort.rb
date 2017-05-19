class GrapeSort < ActiveRecord::Base
 has_many :ratio_of_varieties
 has_many :wine_sorts, through: :ratio_of_varieties
 accepts_nested_attributes_for :ratio_of_varieties
 validates :name, :place, :date_of_collection, presence: true
end
