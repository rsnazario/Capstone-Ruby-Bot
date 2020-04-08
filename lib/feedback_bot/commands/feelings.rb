require_relative '../classes/answers.rb'

require 'open-uri'

module FeedBackbot
  module Commands
    class Feelings < SlackRubyBot::Commands::Base
      command 'feel_great' do |client, data, _match|
        client.say(channel: data.channel, text: Answers.great)
      end

      command 'feel_meh' do |client, data, _match|
        client.say(channel: data.channel, text: Answers.meh)
      end

      command 'feel_sad' do |client, data, _match|
        client.say(channel: data.channel, text: Answers.sad)
      end
    end
  end
end
