# rubocop:disable Security/Open

require 'rss'
require 'open-uri'

module CnnNews
  module Commands
    class GetNews < SlackRubyBot::Commands::Base
      command 'world' do |client, data, _match|
        url = 'http://rss.cnn.com/rss/edition_world.rss'

        world_obj = SlackInteraction.new(url)
        world_obj.interact(client, data.channel)
      end

      command 'americas' do |client, data, _match|
        url = 'http://rss.cnn.com/rss/edition_americas.rss'

        americas_obj = SlackInteraction.new(url)
        americas_obj.interact(client, data.channel)
      end

      command 'sports' do |client, data, _match|
        url = 'http://rss.cnn.com/rss/edition_sport.rss'

        sports_obj = SlackInteraction.new(url)
        sports_obj.interact(client, data.channel)
      end

      command 'tech' do |client, data, _match|
        url = 'http://rss.cnn.com/rss/edition_technology.rss'

        tech_obj = SlackInteraction.new(url)
        tech_obj.interact(client, data.channel)
      end

      command 'science' do |client, data, _match|
        url = 'http://rss.cnn.com/rss/edition_space.rss'
        
        science_obj = SlackInteraction.new(url)
        science_obj.interact(client, data.channel)
      end
    end
  end
end

class SlackInteraction
  attr_reader :url

  def initialize(url)
    @url = url
  end
  
  def interact(client, to_channel)
    speaker(client, to_channel, url_parser)
  end

  private
  def url_parser
    RSS::Parser.parse(open(@url).read, false)
  end

  def speaker(client, to_channel, info)
    client.say(channel: to_channel, text: info.items.first.link)
    client.say(channel: to_channel, text: info.items.second.link)
    client.say(channel: to_channel, text: info.items.third.link)
  end
end

# rubocop:enable Security/Open
