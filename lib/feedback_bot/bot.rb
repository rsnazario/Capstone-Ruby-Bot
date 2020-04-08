module FeedBackbot
  class Bot < SlackRubyBot::Bot
    help do
      title 'FeedBack Slack Bot'
      desc 'This Bot Provides Motivational FeedBack'

      command :feel_great do
        title 'feel_great'
        desc 'Provides Happy Feedback if Person Feels Great'
      end

      command :feel_meh do
        title 'feel_meh'
        desc 'Provides Motivational Feedback if Person is demotivated in some way'
      end

      command :feel_sad do
        title 'feel_sad'
        desc 'Provides Motivational Feedback if Person is Feeling Sad'
      end
    end
  end
end
