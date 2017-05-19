class WineSort < ActiveRecord::Base
 has_many :barrels
 has_many :ratio_of_varieties
 has_many :grape_sorts, through: :ratio_of_varieties
 validates :name, :wine, :time_in_the_barrel, :time_in_the_bottel, presence: true
end

