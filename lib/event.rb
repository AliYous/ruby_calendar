class Event
  attr_accessor :start_date
  attr_accessor :duration
	attr_accessor :title
  attr_accessor :attendees
  attr_accessor :end_date

  def initialize(start_date, duration, title, attendees_email)
    	@start_date = Time.parse(start_date)
      @duration = duration
      @title = title
			@attendees = attendees_email
	end

  #Décale la date d'un évènement de 24h dans le futur
  def postpone_24h
    self.start_date = start_date + 24*60*60
  end

  #Se base sur la duration variable pour retourner la date de fin
  def end_date
    end_date = @start_date + duration*60
    return end_date
  end

  #Retourne true si la date de début de l'évènement est déjà passée
  def is_past?
    is_event_past = false
    is_event_past = true if start_date < Time.now
    return is_event_past
  end

  #returns true if the event is in the future
  def is_future?
    is_event_future = false
    is_event_future = true if !is_past?
    return is_event_future
  end

  #returns true if event is in less than 30 minutes
  def is_soon?
    is_event_soon = false
    if is_future? == true
      is_event_soon = true if (start_date - Time.now <= 30*60)
    end
    return is_event_soon
  end

  def to_s
    puts "Titre : #{title}"
    puts "Date de début : #{start_date.to_s}"
    puts "Date de fin : #{end_date.to_s}"
    puts "Durée : #{duration}"
    puts "Invités : #{attendees}"
    puts "------------------------------------"

    if is_soon?
      puts "L'évènement commence dans moins de 30 minutes"
    elsif is_past?
      puts "La date de début de cet évènement est déjà passée :("
    end
  end
end

