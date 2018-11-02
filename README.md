# Social Boost / private-events 
Rails app made to showcase advanced database relations
where we can:

* Sign up new users
* Send confirmation email (no action required)
* Log in
* Create events
* Keep track of past and upcoming events
* Invite other users to the events
* Accept or decline pending invitations

You can [check it online here](https://social-boost-app.herokuapp.com/) (It can take a bit to load as Heroku starts a dyno)

The seeds include 2 example users usable to log in:

* example1@mail.com (User1)
* example2@mail.com (User2)

Or you can clone the repo and run:

1. $bundle install
1. $rails db:migrate
1. $rails db:seed
1. $rails server
1. Go to http://localhost:3000/ in your web browser
