class Dog
  
     attr_accessor(:dog_name, :breed, :owner_name, :owner_phone, :appointment)
  
     def initialize(dog_name, breed, owner_name, owner_phone, appointment)
       @dog_name = dog_name
       @breed = breed
       @owner_name = owner_name
       @owner_phone = owner_phone
       @appointment = appointment
     end
  end
  
  def register()
   puts "Dog name: "
    input_name = gets.strip.capitalize
    while input_name.class != String
      "Please enter a valid dog name: "
      input_name = gets.strip.capitalize
    end
   puts "Dog breed: "
    input_breed = gets.strip.capitalize
   puts "Owner name: "
    input_owner_name = gets.strip.capitalize
   puts "Owner phone number: "
    input_phone = gets.strip.capitalize
   puts "Appointment (00:00 24 hour): "
    input_appointment = gets.strip
  
   registered_dog = Dog.new(input_name, input_breed, input_owner_name, input_phone, input_appointment)
   
   puts ("#{registered_dog.dog_name} is booked for their appointment at #{registered_dog.appointment}")
  
   File.open("appts.csv", "a") do |dog|
     dog.puts ("\n#{registered_dog.appointment}: Dog name: #{registered_dog.dog_name}, Owner name: #{registered_dog.owner_name}, Owner phone: #{registered_dog.owner_phone} ")
   end

  end

def exit_program()
  puts "Enjoy your day!"
end


puts ("\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
puts ("WELCOME TO THE DOG'S DAY APP")
puts ("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")

option = 0 

while option != 1 && option != 2 &&  option != 3

     puts ("\nMENU")
     puts ("1: display appointments") 
     puts ("2: register a new dog appointment") 
     puts ("3: exit") 
     puts ("Please enter your option: ")

     option = gets().strip
     
     case option
      when "1"
        puts ("TODAY'S APPOINTMENTS:")
          File.open("appts.csv").each do |line|
                puts line
              end
      when "2"
        register()
      when "3"
          exit_program()
          break
      else
        puts("#{option} is not a valid option.")
     end
  
end  