class SendToSlack 
	def initialize(message, username)
		@uri = ENV['SLACK_INCOMING_WEBHOOK_URL']
		@channel = '#engineering'
		@poster = Slack::Poster.new(@uri)
		@poster.username = username
		@poster.icon_emoji = [':bananadance:', ':facepalm:', ':flying-money:', ':liftoff:', ':loading:', ':partyparrot:', ':partyparrot-shuffle:', ':plusone:', ':slowclap:', ':waving:', ':beers:'].sample
		@poster.send_message(message)
	end
end
