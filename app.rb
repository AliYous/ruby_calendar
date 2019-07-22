# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'


julie = User.new("ali@gmail.fr", 30)
jean = User.new("jean@hotmail.fr", 15)

arr_user_mail = []
arr_user_mail.push(julie.email, jean.email)

entrainement = Event.new("2019-07-22 15:30", 50, "Entrainement avec jean et julie", arr_user_mail)
entrainement.to_s
user_1 = User.find_by_email("ali@gmail.fr")
puts user_1.age