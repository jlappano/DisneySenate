class Senator < ActiveRecord::Base
  has_one :disney_character_senator
  has_one :disney_character, :through => :disney_character_senator
end