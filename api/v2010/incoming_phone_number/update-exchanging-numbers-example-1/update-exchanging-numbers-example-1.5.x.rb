# Download the helper library from https://www.twilio.com/docs/ruby/install
require 'rubygems'
require 'twilio-ruby'

# Your Account Sid and Auth Token from twilio.com/console
# DANGER! This is insecure. See http://twil.io/secure
account_sid = 'ACzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
auth_token = 'your_auth_token'
@client = Twilio::REST::Client.new(account_sid, auth_token)

incoming_phone_number = @client
  .incoming_phone_numbers('PNyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy')
  .update(account_sid: 'ACzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz')

puts incoming_phone_number.friendly_name
