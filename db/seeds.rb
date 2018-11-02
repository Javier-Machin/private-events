#Create 2 users

2.times do |n|
  User.create(name:  "User#{n+1}",
              email: "example#{n+1}@mail.com")
end

#Create example events

User.first.events.create( name:        "Arnold Classic 2018",
                          description: "Bodybuilding competition",
                          date:        "2018-03-01")

User.second.events.create(name:        "Cookie eating contest",
                          description: "Stay away if you are on a diet",
                          date:        "2018-02-01")

User.first.events.create( name:        "Microsoft Edge worshippers meetup",
                          description: "Secret ritual to please the browser dark lord",
                          date:        "2066-06-06")

User.second.events.create(name:        "Star gazing night",
                          description: "Catch a cold for free",
                          date:        "2025-04-21")

User.first.events.create( name:        "Rails world domination planning",
                          description: "Debate on how to make nodeJS fail",
                          date:        "2015-07-11")

User.second.events.create(name:        "What is Faker and why you need that",
                          description: "For those too lazy to add anything to the gemfile",
                          date:        "2018-02-01")

User.first.events.create( name:        "Writing seeds on a good saturday morning",
                          description: "This is a great description",
                          date:        "2020-03-26")

User.second.events.create(name:        "Old movies night",
                          description: "Good movies and a few drinks",
                          date:        "2025-04-21")


#Add events as attendee

User.first.events_as_attendee << Event.second
User.first.events_as_attendee << Event.fourth
User.second.events_as_attendee << Event.first
User.second.events_as_attendee << Event.third


#Send invitations

User.first.invitations.create( event_id:     Event.find(5).id,
                               invited_user: User.second)

User.second.invitations.create(event_id:     Event.find(6).id,
                               invited_user: User.first)