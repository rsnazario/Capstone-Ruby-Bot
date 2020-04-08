require 'slack-ruby-bot/rspec'
require './lib/feedback_bot/bot'

describe FeedBackbot::Bot do
  let(:object) { FeedBackbot::Bot.instance }
  context 'not configured' do
    before do
      @slack_api_token = ENV.delete('SLACK_API_TOKEN')
    end
    after do
      ENV['SLACK_API_TOKEN'] = @slack_api_token
    end
    it describe 'Requires SLACK_API_TOKEN' do
      expect { object }.to raise_error RuntimeError, "Missing ENV['SLACK_API_TOKEN']."
    end
  end
end
