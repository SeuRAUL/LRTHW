class Song

	def initialize(lyrics)
		@lyrics = lyrics
	end

	def sing_me_a_song()
		for line in @lyrics
			puts line
		end
	end
end

happy_bday = Song.new(["Happy birthday to you",
										"I don't want to get sued",
										"So I'll stop right there"])

bull_on_parade = Song.new(["They rally around the family",
													"With pockets full of shells"])

camarote = Song.new(["Como é que você ainda tem coragem de falar comigo?",
                     "Além de não ter coração, não tem juízo",
                     "Fez o que fez e vem me pedir pra voltar"])

#happy_bday.sing_me_a_song()

#bull_on_parade.sing_me_a_song()

camarote.sing_me_a_song()
