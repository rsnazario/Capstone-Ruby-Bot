# rubocop:disable Security/Open

require 'rss'
require 'open-uri'

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
