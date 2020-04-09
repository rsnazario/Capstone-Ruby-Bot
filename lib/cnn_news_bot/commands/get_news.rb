require 'rss'
require 'open-uri'

module CnnNews
  module Commands
    class GetNews < SlackRubyBot::Commands::Base
      command 'world' do |client, data, _match|
        url = 'http://rss.cnn.com/rss/edition_world.rss'
        
        rss = RSS::Parser.parse(open(url).read, false)
        client.say(channel: data.channel, text: rss.items.first.title)
        client.say(channel: data.channel, text: rss.items.first.link)
        client.say(channel: data.channel, text: rss.items.first.title)
        client.say(channel: data.channel, text: rss.items.second.link)
        client.say(channel: data.channel, text: rss.items.first.title)
        client.say(channel: data.channel, text: rss.items.third.link)
      end

      command 'americas' do |client, data, _match|
        url = 'http://rss.cnn.com/rss/edition_americas.rss'
        
        rss = RSS::Parser.parse(open(url).read, false)
        client.say(channel: data.channel, text: rss.items.first.title)
        client.say(channel: data.channel, text: rss.items.first.link)
        client.say(channel: data.channel, text: rss.items.first.title)
        client.say(channel: data.channel, text: rss.items.second.link)
        client.say(channel: data.channel, text: rss.items.first.title)
        client.say(channel: data.channel, text: rss.items.third.link)
      end
      
      command 'sports' do |client, data, _match|
        url = 'http://rss.cnn.com/rss/edition_sport.rss'
        
        rss = RSS::Parser.parse(open(url).read, false)
        client.say(channel: data.channel, text: rss.items.first.link)
        client.say(channel: data.channel, text: rss.items.second.link)
        client.say(channel: data.channel, text: rss.items.third.link)
      end
      
      command 'tech' do |client, data, _match|
        url = 'http://rss.cnn.com/rss/edition_technology.rss'
        
        rss = RSS::Parser.parse(open(url).read, false)
        client.say(channel: data.channel, text: rss.items.first.link)
        client.say(channel: data.channel, text: rss.items.second.link)
        client.say(channel: data.channel, text: rss.items.third.link)
      end
      
      command 'science' do |client, data, _match|
        url = 'http://rss.cnn.com/rss/edition_space.rss'
        
        rss = RSS::Parser.parse(open(url).read, false)
        client.say(channel: data.channel, text: rss.items.first.link)
        client.say(channel: data.channel, text: rss.items.second.link)
        client.say(channel: data.channel, text: rss.items.third.link)
      end
      
      
      command 'say_hello' do |client, data, _match|
        client.say(channel: data.channel, text: HelloText.say_hello)
      end
    end
  end
end


class HelloText
  def self.say_hello
    'Hello! This is a Bot!'
  end
end