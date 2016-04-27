class SendToHipchat 
	def initialize(message, username)
		api_token = ENV['HIPCHAT_API_TOKEN']
		client = HipChat::Client.new(api_token, :api_version => 'v2')
		client['Engineering'].send(username, message)
	end
end