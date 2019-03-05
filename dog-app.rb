class Dog

@@counter = 0

    attr_accessor(:dog_name, :breed, :owner_name, :owner_email, :appointment)
      
    def initialize(dog_name, breed, owner_name, owner_email, appointment)
      @dog_name = dog_name
      @breed = breed
      @owner_name = owner_name
      @owner_email = owner_email
      @appointment = appointment
      @@counter += 1
      puts "I've been initialized!"
    end
end

def register()
  puts "Dog name: "
  input_name = gets.strip
  puts "Dog breed: "
  input_breed = gets.strip
  puts "Owner name: "
  input_owner_name = gets.strip
  puts "Owner email: "
  input_email = gets.strip
  puts "Appointment: "
  input_appointment = gets.strip

  registered_dog = Dog.new(input_name, input_breed, input_owner_name, input_email, input_appointment)
  puts ("#{registered_dog.dog_name} has been registered") 
end

    print ("Select one of the followings options: 1- to Display Appts or 2- to Register a Dog ")
    puts
    option = gets().strip
    case option 
    when "1"
      puts ("Today's Appointments:")
        File.open("appts.csv").each do |line|
             puts line
            end 
    when "2"
     puts "#{register}"
    else
      puts("Error. Invalid option.")
    end

    

    # dog1 = Dog.new("ellie", "dacshund", "elizabeth", "0408319636", "ejwhiley29@gmail.com", "12 May 2019")
    # register()
    


   
