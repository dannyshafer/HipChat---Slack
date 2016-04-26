class SendToSlackService
	NAME_AND_ICON = {
		username: 'Bespoke Bot',
		icon_emoji: ':bat:'
	}

	def initialize(channel = ENV['SLACK_WEBHOOK_CHANNEL'])
		@uri = URI(ENV['SLACK_INCOMING_WEBHOOK_URL'])
		@channel = channel
	end

	def send_message #will hold username and content of message
		params = {
			attachments: [
				{
					title: '',
					fallback: '',
					color: 'good',
					text: "Hello from crunkworks"
		}]}
		@params = generate_payload(params)
		self
	end

	def deliver
		begin
			Net::HTTP.post_form(@uri, @params)
		rescue => e
			Rails.logger.error("BespokeSlackbotService: Error when sending: #{e.message}")
		end
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