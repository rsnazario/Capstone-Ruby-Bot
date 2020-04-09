module CnnNews
  class Bot < SlackRubyBot::Bot
    help do
      title 'CNN News Bot'
      desc 'This bot gets you some news'

      command :world do
        title 'world_news'
        desc 'Returns 3 links with related-topic news'
        long_desc 'Returns the links for the last 3 news about World'
      end

      command :americas do
        title 'americas'
        desc 'Returns 3 links with related-topic news'
        long_desc 'Returns the links for the last 3 news about Americas'
      end
      
      command :science do
        title 'science'
        desc 'Returns 3 links with related-topic news'
        long_desc 'Returns the links for the last 3 news about World'
      end

      command :tech do
        title 'science'
        desc 'Returns 3 links with related-topic news'
        long_desc 'Returns the links for the last 3 news about World'
      end

      command :sports do
        title 'science'
        desc 'Returns 3 links with related-topic news'
        long_desc 'Returns the links for the last 3 news about World'
      end
    end
  end
end
