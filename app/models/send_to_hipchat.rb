class SendToHipchat 
	def initialize(message, username)
		api_token = ENV['HIPCHAT_API_TOKEN']
		client = HipChat::Client.new(api_token)
		client['Engineering'].send(username, message)
		# @uri = ENV['SLACK_INCOMING_WEBHOOK_URL'] #this goes to engineering channel
		# @poster = Slack::Poster.new(@uri)
		# @poster.username = username
		# @poster.icon_emoji = [':bananadance:', ':facepalm:', ':flying-money:', ':liftoff:', ':loading:', ':partyparrot:', ':partyparrot-shuffle:', ':plusone:', ':slowclap:', ':waving:', ':beers:'].sample
		# @poster.send_message(message)
		puts "yay"*100
	end
end