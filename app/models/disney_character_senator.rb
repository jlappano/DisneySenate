class DisneyCharacterSenator < ActiveRecord::Base
  belongs_to :disney_character
  belongs_to :senator
end


# class Signature < ActiveRecord::Base
#     belongs_to :card
#     belongs_to :signer, :class_name => "User"
# end
# The User has many signatures (necessary even if you don't use them directly) an dmany signed_cards through signatures with a source of card (telling Rails which class type the signed_cards are.

# class User < ActiveRecord::Base
#     has_many :signatures, :foreign_key => "signer_id"
#     has_many :signed_cards, :through => :signatures, :source => :card 
# end
# Finally, the Card has many signatures (once again necessary) and many signers through signatures and the foreign_key for the signer of signer_id.

# class Card < ActiveRecord::Base
#     has_many :signatures
#     has_many :signers, :through => :signatures, :foreign_key => 'signer_id'
# end