DisneyCharacterSenator.destroy_all
Senator.destroy_all
DisneyCharacter.destroy_all

john_smith = DisneyCharacter.create(character_name: "John Smith", img_url: "http://web-images.chacha.com/images/Gallery/5502/do-disney-princes-have-flaws-589722647-jan-16-2013-1-600x400.jpg", quote: "Look, don't do this. Savage is just a word, uh, you know. A term for people who are uncivilized.")
snow_white = DisneyCharacter.create(character_name: "Snow White", img_url: "http://thedisneyblog.com/wp-content/uploads/2012/09/Snow-White.jpg", quote: "I'm awfully sorry. I didn't mean to frighten you. But you don't know what I've been through. And all because I was afraid. I'm so ashamed of the fuss I made.")
sultan = DisneyCharacter.create(character_name: "Sultan", img_url: "http://media.tumblr.com/tumblr_ma51b3xqEG1r8lbrh.jpg", quote: "You've certainly proven your worth as far as I'm concerned. It's the law that's the problem. ")
charlie = DisneyCharacter.create(character_name: "Charlie", img_url: "http://ia.media-imdb.com/images/M/MV5BMjIzMTQxODIxNV5BMl5BanBnXkFtZTcwODQwNTYyNA@@._V1._SX640_SY497_.jpg", quote: "Why settle for a couple of bones when you could have the whole bank?")
triton = DisneyCharacter.create(character_name: "King Triton", img_url: "http://www.cornel1801.com/disney/Little-Mermaid-1989/characters/King-Triton.jpg", quote: "You could've been seen by one of those barbarians - by - by one of those humans!")
grumpy = DisneyCharacter.create(character_name: "Grumpy", img_url: "http://disney-clipart.com/snow-white/jpg/Dwarfs/Grumpy.jpg", quote: "Now what are you, and who are you doin' here?")
scar = DisneyCharacter.create(character_name: "Scar", img_url: "http://www.interesting6.com/wp-content/uploads/2013/09/531.jpg", quote: "Oh... then eat Zazu.")
cruela = DisneyCharacter.create(character_name: "Cruela De Vil", img_url: "http://i11.photobucket.com/albums/a183/bluefaery05/101-dalmatiens-1961-02-g.jpg", quote: "Oh yes! I love the smell of near-extinction")
merida = DisneyCharacter.create(character_name: "Merida", img_url: "http://www.disney.co.uk/brave/common/images/characters/merida.png", quote: "I am Merida, and I'll be shooting for my own hand.")
tinkerbell = DisneyCharacter.create(character_name: "Tinkerbell", img_url: "http://3.bp.blogspot.com/-nbbgK_BX26g/T0_5bR8cBsI/AAAAAAAAC3M/RBacRhJdibw/s1600/2tink.jpg", quote: "Every time someone says they do not believe in fairies, somewhere there's a fairy that falls down dead.")
king_louis = DisneyCharacter.create(character_name: "King Louis", img_url: "http://25.media.tumblr.com/tumblr_lfvsu0NhgH1qbgym5o1_500.jpg", quote: "Ha-ha, so you're the mancub? Crazy.")
doc_facilier = DisneyCharacter.create(character_name: "Doctor Facilier", img_url: "http://25.media.tumblr.com/tumblr_m7ccarm1601rzfo3wo1_400.jpg", quote: "I'll have the entire city of New Orleans in the palm of my hand.")
beast = DisneyCharacter.create(character_name: "Beast", img_url: "http://images2.fanpop.com/image/photos/12800000/The-Beast-disney-prince-12802498-960-540.jpg", quote: "I warned you never to COME HERE!")
carl = DisneyCharacter.create(character_name: "Carl", img_url: "http://3.bp.blogspot.com/-UyrEAaycnLE/UHxfcBAPoYI/AAAAAAAAB-k/ao5NqcYCM9I/s1600/url.jpg", quote: "No!")
hades = DisneyCharacter.create(character_name: "Hades", img_url: "http://2.bp.blogspot.com/-Fa4LOvxS2h4/T431cv-NDBI/AAAAAAAAAUI/I30oOmgDykc/s1600/avjx3sCJA1qdce8vo1_500.jpg", quote: "Let's get ready to RUMBLLLLLLE!")
gaston = DisneyCharacter.create(character_name: "Gaston", img_url: "http://thewiseguise.com/wp-content/uploads/2012/03/GastonVillain.jpg", quote: "How can you read this? There's no pictures!")

legislators = Congress.legislators(per_page: "all")
senior_senators = legislators["results"].select do |leg| 
  leg["title"] == "Sen" && leg["state_rank"] == "senior"
end
senior_senators.each do |sen|
    senator = Senator.create(
      first_name: sen['first_name'],
      last_name: sen['last_name'],
      state: sen['state'],
      phone: sen['phone'],
      website: sen['website'],
      twitter_id: sen['twitter_id']
    )
end



