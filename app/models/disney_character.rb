class DisneyCharacter < ActiveRecord::Base
  has_many :disney_character_senators
  has_many :senators, :through => :disney_character_senators
end

