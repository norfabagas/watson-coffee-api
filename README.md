# README

## Ruby on Rails
For cloning and deployment, please consider:

* Ruby version: 2.6.5

* Rails version: 6.x.x

* System dependencies

* Configuration: create .env file and use .env.example as guidance

* Database creation: run `rake db:create`

* Database initialization: run `rake db:migrate`

## IBM Watson Assistant
* IBM Watson Assistant file is configured in file `./ibm-watson.json`
* To run the assistant, generate new watson service in IBM Cloud and import file `ibm-watson.json`

## Deployment
* Deploy Ruby on Rails to cloud, I recommend using Heroku. Read more: https://devcenter.heroku.com/articles/getting-started-with-rails6
* Create new IBM Watson assistant service.
* Import skill `ibm-watson.json`.
* Add webhook and set to this url: https://YOUR_URL/api/v1/menu. (change YOUR_URL with URL created from Heroku/other deployment service).
* Integrate IBM Watson assistant with Slack. Read here: https://cloud.ibm.com/docs/assistant?topic=assistant-deploy-slack#deploy-slack-try