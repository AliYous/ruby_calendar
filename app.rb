# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'
require_relative 'lib/event_creator'


def perform
	event_info = EventCreator.new
	start_date = event_info.start_date_string 
	duration = event_info.duration
	title = event_info.title
	attendees = event_info.attendees

	evenement1 = Event.new(start_date, duration, title, attendees)
	evenement1.to_s
end
perform