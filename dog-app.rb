# Sets up the dog class to provide a blueprint for registering dog objects 
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

# This method checks input that shouldn't contain numbers and asks the user to re-enter 
  def input_checker_numbers(input_to_check)
    arr_string = input_to_check.split("")
    numbers = ('0'..'9').to_a
    numbers.each do |num|
        if arr_string.include?(num)
            puts "Sorry your input contained numbers. Please try again"
            print "> "
            input_to_check = gets.strip.capitalize
            input_checker_numbers(input_to_check)
        end 
    end
    return input_to_check
end  


# This method registers dog details to create each dog object, validates the input with the checker method and writes it to a CSV. It also gives the user some feedback to say when the dog has been registered.  
  def register()
   puts "Dog name: "
    input_name = gets.strip
    input_name = input_checker_numbers(input_name)
   puts "Dog breed: "
    input_breed = gets.strip
    input_breed = input_checker_numbers(input_breed)
   puts "Owner name: "
    input_owner_name = gets.strip
    input_owner_name = input_checker_numbers(input_owner_name)
   puts "Owner phone number: "
    input_phone = gets.strip
   puts "Appointment (00:00 24 hour): "
    input_appointment = gets.strip
  
   registered_dog = Dog.new(input_name, input_breed, input_owner_name, input_phone, input_appointment)
   
   puts ("#{registered_dog.dog_name} is booked for their appointment at #{registered_dog.appointment}")
  
   File.open("appts.csv", "a") do |dog|
     dog.puts ("\n#{registered_dog.appointment}: Dog name: #{registered_dog.dog_name}, Owner name: #{registered_dog.owner_name}, Owner phone: #{registered_dog.owner_phone} ")
   end

  end

  # This method provides a message to the user before exiting the program
def exit_program()
  puts "Enjoy your day!"
end

# The menu is a while loop so users return to the main menu unless they choose exit. It accepts options 1, 2 or 3 but asks the user to try again if they don't. Option 1 displays the current state of the CSV, option 2 runs the register method and option 3 runs the exit method.  

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

# # # TESTING THE NUMBER CHECKER METHOD
# test_array = ['9h7', '99' "r"]

# test_array.each do |test_case|
#   input_checker_numbers(test_case)
#   puts input_checker_numbers
# end 


