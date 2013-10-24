class DisneyCharacterSenator < ActiveRecord::Base
  belongs_to :disney_characters
  belongs_to :senator
end