require 'pry'

class User
  attr_accessor :email
  attr_accessor :age
  @@all_users = []

  def initialize(email_adress, age)
    @email = email_adress
    @age = age
    @@all_users << self
  end

  def self.all
  	return @@all_users
	end
	
	def self.find_by_email(email)
		@@all_users.each {|user| return user if user.email == email}
	end

	




end