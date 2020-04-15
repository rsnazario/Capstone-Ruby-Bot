require 'rss'
require 'open-uri'
require_relative '../classes/slack_interaction'

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
