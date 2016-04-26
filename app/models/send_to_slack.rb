class SendToSlack 
	NAME_AND_ICON = {
		username: 'danny',
		icon_emoji: ':bat:'
	}

	def initialize(channel = "#engineering")
		@uri = 'https://hooks.slack.com/services/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'
		@channel = '#engineering'
	end

	def send_message #will hold username and content of message
		params = {
			attachments: [
				{
					
					text: 'Hello from crunkworks'
				}
			]
		}
		@params = generate_payload(params)
		self
	end

	def deliver
		puts "_"*100
		puts @params
		puts @uri
		puts "_"*100
		begin
			HTTParty.post(@uri, :payload => {"text" => "crunk ain't nothin' but bass music slowed down."})
		rescue
			puts "wtf becky"*100
		end
		# begin
		# 	Net::HTTP.post_form(@uri, @params)
		# rescue => e
		# 	puts e
		# 	puts 'bruh'
		# end
	end

	private

	def generate_payload(params)
		{
			payload: NAME_AND_ICON
			.merge(channel: @channel)
			.merge(params).to_json
		}
	end
end
