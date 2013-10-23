class DisneyCharacterSenator < ActiveRecord::Base
  belongs_to :disney_character
  belongs_to :senator
end