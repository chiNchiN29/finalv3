module PlayersHelper
	def display_image(card)
		image_tag("#{card[0]}_#{card[1]}.jpg")
	end
end
