class EventCreator
    attr_accessor :title
    attr_accessor :start_date_string
    attr_accessor :duration
    attr_accessor :attendees

    def initialize
        puts "Bienvenue dans le créateur d'évenements \n \n"
        puts "Titre de votre event : "
        print "> "
        @title = gets.chomp

        puts "Date de votre event : "
        print "> "
        @start_date_string = gets.chomp

        puts "Durée de votre event : "
        print "> "
        @duration = gets.chomp.to_i

        puts "Qui va participer : Saisissez les adresses mail des participants séparées par une virgule "
        print "> "
        @attendees = gets.chomp.split(",")

        puts "\n Super, ton évènement à été créé !"

    end

end
