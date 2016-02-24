require 'twilio-ruby'

accountSID = '...'
authToken = '...'
@client = Twilio::REST::Client.new accountSID, authToken

from = '+12674634447'

friends = { '+1...' => "..."}

friends.each do |key,value|
	message = @client.account.messages.create(
										:from => from,
										:to => key,
										:body => "Hey #{value}, I made a program to send texts"

	)
	puts "Sent message to #{value}"
end

