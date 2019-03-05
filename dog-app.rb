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
      @id = @@counter
    end
end   

# The register method gets dog information, creates a new dog instance and pushes it to the registered dogs array

def register(registered_dogs)
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
  registered_dogs << registered_dog 
  return registered_dogs
end

# dog1 = Dog.new("ellie", "dacshund", "elizabeth", "0408319636", "ejwhiley29@gmail.com", "12 May 2019")
registered_dogs = []

puts register(registered_dogs)
puts register(registered_dogs)

def display (registered_dogs)
  registered_dogs.each do (dog)
    puts ("dog id: #{dog.id}, name: #{dog.dog_name}, appointment: #{dog.appointment}")
  end
end

display(registered_dogs)


