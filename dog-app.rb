class Dog

@@counter = 0

    attr_accessor(:dog_name, :breed, :owner_name, :owner_phone, :owner_email, :appointment)
      
    def initialize(dog_name, breed, owner_name, owner_phone, owner_email, appointment)
      @dog_name = dog_name
      @breed = breed
      @owner_name = owner_name
      @owner_phone = owner_phone
      @owner_email = owner_email
      @appointment = appointment
        @@counter += 1
      puts "I've been initialized!"
    end
  

end   