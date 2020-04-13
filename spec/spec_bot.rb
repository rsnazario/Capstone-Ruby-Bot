require 'slack-ruby-bot/rspec'
require './lib/cnn_news_bot/bot'

describe CnnNews::Bot do
  let(:object) { CnnNews::Bot.instance }

  context 'slack_token not configured' do
    before do
      @slack_api_token = ENV.delete('SLACK_API_TOKEN')
    end
    after do
      ENV['SLACK_API_TOKEN'] = @slack_api_token
    end
    it 'Requires SLACK_API_TOKEN' do
      expect { object }.to raise_error RuntimeError, "Missing ENV['SLACK_API_TOKEN']."
    end
  end

  context 'slack_token configured' do
    @slack_api_token = ENV['SLACK_API_TOKEN']
    it 'Requires SLACK_API_TOKEN' do
      expect { object }.not_to raise_error
    end
  end
end
