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


Now, to Link your file to the API with Slack, go to [slack.com/services/new/bot](https://slack.com/services/new/bot) in <strong>your workspace (You must be on a workspace so the link will work)</strong> and create a bot application to get a <strong>SLACK_API_TOKEN</strong>.

Choose from the two options to connect your machine to Slack:

<strong>Option 1 - .env file</strong>
  - Add <code>SLACK_API_TOKEN = @your_token_here </code>
  - Add <code>gem 'dotenv' to your Gemfile
  - Code the config.ru file as in this repo
>
<strong>Option 2 - export</strong>
  - Type <code>$export SLACK_API_TOKEN=@your_token_here</code> on your terminal
  - Add <code>token=ENV['SLACK_API_TOKEN']</code> as in the video of the last link (check after 13')
>
If you choose to apply option 1, add the same Gems on the Gemfile of this Repo
  - celluloid-io
  - dotenv
  - puma
  - rack
  - slack-ruby-bot
  
The files <code>main.rb</code> and <code>bot.rb</code> just require the communication with other files and/or describe the functionality of the <strong>help</strong> command, respectively. 
The important file to understand of your first Bot implementation, is the <strong>command</strong> file <code>get_news.rb</code>. The main concept in this file is that you can open an url after requiring <code> require 'open-uri'</code> and then you can <strong>Parse</strong> the information within the variable to finally access it as items format.

Finally, just run on your terminal the <code>bundle exec rackup</code> to connect your first Slack Ruby bot to the workspace previosly. 

### Video Presentation

The link for the video presentation in Loom platform is [here](https://www.loom.com/share/f4e5f35127cd4adcb2c8661ec4e12e43)


## Author

👤 **Rafael Nazario**

- Github: [@rsnazario](https://github.com/rsnazario)
- Twitter: [@rsnazario](https://twitter.com/rsnazario)
- Linkedin: [Rafael Nazario](https://www.linkedin.com/in/rafael-nazario-692b8293/) 

## 🤝 Contributing

Contributions, issues are welcome!

Feel free to check the issues page [here](https://github.com/rsnazario/Capstone-Ruby-Bot/issues)

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse!
- Programming Partner: [Elbie Moonga](https://github.com/Elbie-em)
- Microverse Friends:  [Julio Añoveros Barrera](https://github.com/jubaan) | [Eduardo Cruz](https://github.com/EdCrux)
- Microverse Mentor:   [Carlos Augusto Medeiros Filho](https://github.com/camfilho)
