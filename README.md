# Ruby Capstone - Build a Simple Bot
>
The Project is part of Microverse Ruby Curriculum. Its task is to build a simple bot as described in [here](https://www.notion.so/Build-your-own-bot-ebd0d7ac5da240e5987720bdc83f38fa)

## Built With

- Ruby
- Ruby Gems
- VSCode
- Terminal
- Linter

### Getting Started

The implemented project is a bot that interacts with the users on the Slack Platform and returns news from the CNN Platform. 

The bot takes the API token to work on Slack and is implemented using the <strong>rss</strong> functionality of the page of the [CNN-rss](https://edition.cnn.com/services/rss/). 

In order to understand the coding for the bot, these are some links that are helpful:

     https://www.driftingruby.com/episodes/creating-a-simple-slack-bot
     https://github.com/slack-ruby/slack-ruby-bot
     https://www.rubydoc.info/gems/slack-ruby-bot/0.8.0/SlackRubyBot/Bot
     https://www.rubydoc.info/gems/slack-ruby-bot/0.8.0/SlackRubyBot/Commands/Base
     https://code.dblock.org/2016/03/11/your-first-slack-bot-service-video.html
>

### Implementing Yourself

Start creating your repo and on the terminal type <code>$bundle init</code>. This command is going to create your Gemfile. 
Add the gems as the following screenshot:


Now, to Link your file to the API with Slack, go to [slack.com/services/new/bot](slack.com/services/new/bot) in your workspace and create a bot application to get a <strong>SLACK_API_TOKEN</strong>.

Choose from the two options to connect your machine to Slack:

 1 - .env file
   - Add <code>SLACK_API_TOKEN = @your_token_here </code>
   - Add <code>gem 'dotenv' to your Gemfile 
   - Code the config.ru file as in this repo
  
 2 - export
   - Type <code>$export SLACK_API_TOKEN=@your_token_here</code> on your terminal
   - Add <code>token=ENV['SLACK_API_TOKEN']</code> as in the video of the last link (check after 13')

If you choose to apply option 1, add the same Gems on the Gemfile of this Repo
<code>
  gem 'slack-ruby-bot'
  gem 'dotenv'
  gem 'puma'
  gem 'celluloid-io'
  gem 'rack'
</code>




## Author

👤 **Rafael Nazario**

- Github: [@rsnazario](https://github.com/rsnazario)
- Twitter: [@rsnazario](https://twitter.com/rsnazario)
- Linkedin: [Rafael Nazario](https://www.linkedin.com/in/rafael-nazario-692b8293/) 

## Content Related

     https://rollout.io/blog/the-enumerable-module/
     

## 🤝 Contributing

Contributions, issues are welcome!

Feel free to check the issues page [here](https://github.com/rsnazario/Capstone-Ruby-Bot/issues)

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse!
- The Odin Project
- Programming Partner: [Elbie Moonga](https://github.com/Elbie-em)
- Microverse Friend:   [Julio Añoveros Barrera](https://github.com/jubaan)
- Microverse Mentor:   [Carlos Augusto Medeiros Filho](https://github.com/camfilho)
