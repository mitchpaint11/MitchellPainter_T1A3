require 'rainbow'

# Class Dog
class Dog
    attr_reader :age, :breed
    attr_accessor :name, :date, :future_walk

    def initialize(name, breed, age, future_walk, date)
        @name = name
        @breed = breed
        @age = Rainbow(age).blue
        @future_walk = Rainbow(future_walk).blue
        @date = Rainbow(date).green
        @walk = []
    end

    def walk(time_in_mins)
        @walk << time_in_mins
    end

    def walk_time
        return @walk.sum
    end

    def display_walk
    puts Rainbow("#{@name} ").green + "is a " + Rainbow(@breed.to_s).red + ", is #{@age} years old and needs a #{walk_time} min walk. "
    end

    def display_future_walk
    a = ","
    puts Rainbow(" #{@name}").green + a + Rainbow(" #{@breed}").red + a + " #{@age} yrs old" + a + Rainbow(" #{walk_time}").green + " min walk" + a + " #{@future_walk}" + a + " #{@date}"
    end
end

# Class Owner: Displays dog owners' details, name, address, phone.
class Owner
    attr_reader :phone, :address
    attr_accessor :name, :rating

    def initialize(name, address, phone, rating)
        @name = Rainbow(name).blue
        @address = Rainbow(address).blue
        @phone = Rainbow(phone).blue
        @rating = Rainbow(rating).blue
    end

    def display_details
    print Rainbow("Name: ").orange + "#{@name}, " + Rainbow("Address: ").orange + "#{@address}, " + Rainbow("PH: ").orange + "#{@phone}, " + Rainbow("Rating: ").orange + @rating.to_s + Rainbow("/5)").orange
    end
end

loop do
    puts Rainbow("Hello! Welcome to Woofz, what would you like to view today?").orange
    puts Rainbow("1 :").orange + Rainbow("Current Available Jobs").blue
    puts Rainbow("2 :").orange + Rainbow("Future/Upcoming Jobs").blue
    puts Rainbow("3 :").orange + Rainbow("Past Jobs").blue
    puts Rainbow("4 :").orange + Rainbow("Exit").blue
    puts Rainbow("Please select (1-4): ").orange
    choice = gets.chomp

    # case choice, when user selects menu option 1, puts let's choose a dog to walk, and list dogs!
    list_of_dogs = "for a list of dogs that need walks today! "
    case choice
    when "1"
        puts Rainbow("Current Available Jobs:").blue
        puts Rainbow("To get started, please enter your name: ").orange
        name = gets.chomp
        puts "Hello #{name.capitalize}, Are you ready to find a dog to walk?:" + Rainbow(" Y/N ?").orange
        gets.chomp
        puts "Okay, #{name.capitalize}. Let's choose a dog to walk! "
        puts Rainbow("return/enter ").orange + list_of_dogs
        gets.chomp

        # Main
        dog1 = Dog.new("1. Buster", "Labrador", 4, "12:00", "03/05/2022")
        dog1.walk(30)
        dog1.display_walk

        dog2 = Dog.new("2. Juno", "Border Collie", 2, "12:00", "03/05/2022")
        dog2.walk(60)
        dog2.display_walk

        dog3 = Dog.new("3. Fluffy", "Groodle", 3, "12:00", "03/05/2022")
        dog3.walk(45)
        dog3.display_walk

        dog4 = Dog.new("4. Bindi", "Springer Spanial", 2, "12:00", "03/05/2022")
        dog4.walk(60)
        dog4.display_walk

        # NOTE: Juno and Bindi both need 60 min walks and can be walked together!
        return_continue = Rainbow("return/enter to continue..").orange
        walked_together = " both need 60 min walks and can be walked together! "
        a = " and "
        note = "Note: "
        puts return_continue
        gets.chomp
        puts note + Rainbow("Juno").green + a + Rainbow("Bindi").green + walked_together
        puts return_continue
        gets.chomp

        puts "Which dog would you like to walk? "
        a = Rainbow("To Walk ").blue
        puts Rainbow("1 :").orange + a + Rainbow("Buster").green
        puts Rainbow("2 :").orange + a + Rainbow("Juno").green
        puts Rainbow("3 :").orange + a + Rainbow("Fluffy").green
        puts Rainbow("4 :").orange + a + Rainbow("Bindi").green
        puts Rainbow("5 :").orange + a + Rainbow("Juno & Bindi").green
        puts Rainbow("Please select (1-5): ").orange

        # conditional statement: case when logic to take different path based on whether the condition was evaluated to true
        user_input = gets.chomp.capitalize
        return_main_menu = Rainbow("return/enter for main menu!").orange
        return_continue = Rainbow("return/enter to continue..").orange
        chosen_dog = "You have chosen to walk "
        confirm = " Confirm"
        invalid = Rainbow("Invalid Entry, Try Again!").red
        chosen_dog_coonfirmed = "Great, You have confirmed you will take "
        for_a = "for a "
        walk = "walk."
        payment = "You will be paid "
        for_walk = "for this walk!"

        case user_input
        when "1"
            puts chosen_dog + Rainbow("Buster!").green + confirm + Rainbow(" Y/N ?").orange
            puts chosen_dog_coonfirmed + Rainbow("Buster ").green + for_a + Rainbow("30 min ").red + walk
            puts return_continue
            gets.chomp
            puts payment + Rainbow("$20 ").red + for_walk
            puts return_main_menu
        when "2"
            puts chosen_dog + Rainbow("Juno!").green + confirm + Rainbow(" Y/N ?").orange
            gets.chomp.to_i
            puts chosen_dog_coonfirmed + Rainbow("Juno ").green + for_a + Rainbow("60 min ").red + walk
            puts return_continue
            gets.chomp
            puts payment + Rainbow("$30 ").red + for_walk
            puts return_main_menu
        when "3"
            puts chosen_dog + Rainbow("Fluffy!").green + confirm + Rainbow(" Y/N ?").orange
            gets.chomp.to_i
            puts chosen_dog_coonfirmed + Rainbow("Fluffy ").green + for_a + Rainbow("45 min ").red + walk
            puts return_continue
            gets.chomp
            puts payment + Rainbow("$25 ").red + for_walk
            puts return_main_menu
        when "4"
            puts chosen_dog + Rainbow("Bindi!").green + confirm + Rainbow(" Y/N ?").orange
            gets.chomp.to_i
            puts chosen_dog_coonfirmed + Rainbow("Bindi ").green + for_a + Rainbow("60 min ").red + walk
            puts return_continue
            gets.chomp
            puts payment + Rainbow("$30 ").red + for_walk
            puts return_main_menu
        when "5"
            puts chosen_dog + Rainbow("Juno & Bindi").green + confirm + Rainbow(" Y/N ?").orange
            gets.chomp.to_i
            puts chosen_dog_coonfirmed + Rainbow("Juno & Bindi ").green + for_a + Rainbow("60 min ").red + walk
            puts return_continue
            gets.chomp
            puts payment + Rainbow("$40 ").red + for_walk
            puts return_main_menu
        else
            puts invalid
        end
        gets.chomp

    when "2"
        puts Rainbow("Future/Upcoming Jobs").blue
        # puts " Name:    Breed:   Age:   Walk-duration:  Time/24hrs:  Date:"
        dog1 = Dog.new("1. Cooper", "Labrador", 4, "12:00", "03/05/2022")
        dog1.walk(30)
        dog1.display_future_walk

        dog2 = Dog.new("2. Koda", "Border Collie", 2, "11:00", "08/05/2022")
        dog2.walk(60)
        dog2.display_future_walk

        dog3 = Dog.new("3. Sandy", "Groodle", 3, "13:00", "12/05/2022")
        dog3.walk(45)
        dog3.display_future_walk

        dog4 = Dog.new("4. Bailey", "Springer Spanial", 2, "13:30", "28/07/2022")
        dog4.walk(60)
        dog4.display_future_walk

        dog5 = Dog.new("5. Harley", "Australian Shepherd", 5, "15:00", "21/06/2022")
        dog5.walk(60)
        dog5.display_future_walk

        dog6 = Dog.new("6. Thor", "Australian Cattle Dog", 2, "11:00", "17/06/2022")
        dog6.walk(60)
        dog6.display_future_walk

        dog7 = Dog.new("7. Teddy", "Groodle", 3, "12:30", "13/05/2022")
        dog7.walk(45)
        dog7.display_future_walk

        dog8 = Dog.new("8. Benji", "Border Collie", 6, "16:00", "20/06/2022")
        dog8.walk(30)
        dog8.display_future_walk

        dog9 = Dog.new("9. Piper", "Springer Spanial", 4, "17:00", "05/05/2022")
        dog9.walk(30)
        dog9.display_future_walk

        dog10 = Dog.new("10. Peanut", "Beagle", 1, "16:00", "14/05/2022")
        dog10.walk(30)
        dog10.display_future_walk

        puts Rainbow("return/enter for main menu!").orange
        gets.chomp

    when "3"
        puts Rainbow("Past Jobs").blue
        owner1 = Owner.new("John Doe", "261 Anywhere st", "0401234567", 5)
        owner1.display_details
        dog1 = Dog.new("1. Lucky", "Labrador", 2, "12:00", "03/02/2022")
        dog1.walk(30)
        dog1.display_future_walk

        owner2 = Owner.new("John Doe", "261 Anywhere st", "0401234567", 4)
        owner2.display_details
        dog2 = Dog.new("2. Ruby", "Border Collie", 4, "11:00", "08/03/2022")
        dog2.walk(60)
        dog2.display_future_walk

        owner3 = Owner.new("John Doe", "261 Anywhere st", "0401234567", 5)
        owner3.display_details
        dog3 = Dog.new("3. Sandy", "Groodle", 3, "16:00", "12/03/2022")
        dog3.walk(45)
        dog3.display_future_walk

        owner4 = Owner.new("John Doe", "261 Anywhere st", "0401234567", 5)
        owner4.display_details
        dog4 = Dog.new("4. Lola", "Springer Spanial", 5, "13:30", "19/03/2022")
        dog4.walk(60)
        dog4.display_future_walk

        owner5 = Owner.new("John Doe", "261 Anywhere st", "0401234567", 4)
        owner5.display_details
        dog5 = Dog.new("5. Harley", "Australian Shepherd", 2, "15:00", "21/03/2022")
        dog5.walk(60)
        dog5.display_future_walk

        owner6 = Owner.new("John Doe", "261 Anywhere st", "0401234567", 5)
        owner6.display_details
        dog6 = Dog.new("6. Rocco", "Australian Cattle Dog", 7, "11:00", "17/06/2022")
        dog6.walk(60)
        dog6.display_future_walk

        owner7 = Owner.new("John Doe", "261 Anywhere st", "0401234567", 5)
        owner7.display_details
        dog7 = Dog.new("7. Oreo", "Groodle", 3, "06:30", "28/01/2022")
        dog7.walk(45)
        dog7.display_future_walk

        owner8 = Owner.new("John Doe", "261 Anywhere st", "0401234567", 5)
        owner8.display_details
        dog8 = Dog.new("8. Huxley", "Border Collie", 8, "13:00", "20/01/2022")
        dog8.walk(30)
        dog8.display_future_walk

        owner9 = Owner.new("John Doe", "261 Anywhere st", "0401234567", 5)
        owner9.display_details
        dog9 = Dog.new("9. Jack", "Springer Spanial", 2, "17:00", "23/02/2022")
        dog9.walk(30)
        dog9.display_future_walk

        owner10 = Owner.new("John Doe", "261 Anywhere st", "0401234567", 5)
        owner10.display_details
        dog10 = Dog.new("10. Bella", "Beagle", 3, "17:00", "03/03/2022")
        dog10.walk(30)
        dog10.display_future_walk

        owner11 = Owner.new("John Doe", "261 Anywhere st", "0401234567", 5)
        owner11.display_details
        dog11 = Dog.new("11. Kobe", "Labrador", 2, "12:00", "03/01/2022")
        dog11.walk(30)
        dog11.display_future_walk

        owner12 = Owner.new("John Doe", "261 Anywhere st", "0401234567", 5)
        owner12.display_details
        dog12 = Dog.new("12. Romeo", "Border Collie", 4, "11:00", "04/02/2022")
        dog12.walk(60)
        dog12.display_future_walk

        owner13 = Owner.new("John Doe", "261 Anywhere st", "0401234567", 5)
        owner13.display_details
        dog13 = Dog.new("13. Lily", "Groodle", 3, "16:00", "08/03/2022")
        dog13.walk(45)
        dog13.display_future_walk

        owner14 = Owner.new("John Doe", "261 Anywhere st", "0401234567", 5)
        owner14.display_details
        dog14 = Dog.new("14. Hazel", "Springer Spanial", 5, "13:30", "15/02/2022")
        dog14.walk(60)
        dog14.display_future_walk

        owner15 = Owner.new("John Doe", "261 Anywhere st", "0401234567", 5)
        owner15.display_details
        dog15 = Dog.new("15. Olive", "Australian Shepherd", 2, "15:00", "26/03/2022")
        dog15.walk(60)
        dog15.display_future_walk

        owner16 = Owner.new("John Doe", "261 Anywhere st", "0401234567", 5)
        owner16.display_details
        dog16 = Dog.new("16. Walter", "Australian Cattle Dog", 7, "11:00", "17/06/2022")
        dog16.walk(60)
        dog16.display_future_walk

        owner17 = Owner.new("John Doe", "261 Anywhere st", "0401234567", 5)
        owner17.display_details
        dog17 = Dog.new("17. Ziggy", "Groodle", 3, "06:30", "21/01/2022")
        dog17.walk(45)
        dog17.display_future_walk

        owner18 = Owner.new("John Doe", "261 Anywhere st", "0401234567", 5)
        owner18.display_details
        dog18 = Dog.new("18. Baxter", "Border Collie", 8, "13:00", "20/01/2022")
        dog18.walk(30)
        dog18.display_future_walk

        owner19 = Owner.new("John Doe", "261 Anywhere st", "0401234567", 5)
        owner19.display_details
        dog19 = Dog.new("19. Scout", "Springer Spanial", 2, "17:00", "12/02/2022")
        dog19.walk(30)
        dog19.display_future_walk

        owner20 = Owner.new("John Doe", "261 Anywhere st", "0401234567", 5)
        owner20.display_details
        dog20 = Dog.new("20. Blue", "Beagle", 3, "17:00", "17/03/2022")
        dog20.walk(30)
        dog20.display_future_walk

        puts Rainbow("return/enter for main menu!").orange
        gets.chomp

    when "4"
        puts Rainbow("Thank You, Have A Nice Day!").orange
        break
    else
        puts Rainbow("Invalid Entry, Try Again!").red
    end
end
