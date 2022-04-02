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
        # @future_walk = []
    end

    def walk(time_in_mins)
        @walk << time_in_mins
    end

    def walk_time
        return @walk.sum
    end

    # def future_walk(time_of_day)
    #     @future_walk << time_of_day
    # end

    # def future_walk_time
    #     return @future_walk.sum
    # end

    # def date(day_month_year)
    #     @date << day_month_year
    # end

    # def date_day_month_year
    #     return @date.sum
    # end

    def display_walk
    puts Rainbow("#{@name} ").green + "is a " + Rainbow("#{@breed}").red + ", is #{@age} years old and needs a #{walk_time} min walk. "
    end

    def display_future_walk
    a = ","
    puts Rainbow(" #{@name}").green + a + Rainbow(" #{@breed}").red + a + " #{@age} yrs old" + a + Rainbow("#{walk_time} min walk").green  + a + " #{@future_walk}" + a + " #{@date}"
    end
end

loop do
    puts Rainbow("Hello! What would you like to view today?").orange
    puts Rainbow("1 :").orange + Rainbow("Current Available Jobs").blue
    puts Rainbow("2 :").orange + Rainbow("Future/Upcoming Jobs").blue
    puts Rainbow("3 :").orange + Rainbow("Past Jobs").blue
    puts Rainbow("4 :").orange + Rainbow("Exit").blue
    puts Rainbow("Please select (1-4): ").orange
    choice = gets.chomp

    case choice
    when "1"
        puts Rainbow("Current Available Jobs:").blue
        puts Rainbow("To get started, please enter your name: ").orange
        name = gets.chomp
        puts "Hello #{name.capitalize}, Are you ready to find a dog to walk?:" + Rainbow(" Y/N ?").orange
        gets.chomp
        puts "Okay, #{name.capitalize}. Let's choose a dog to walk! "
        puts Rainbow("return/enter ").orange + "for a list of dogs that need walks today! "
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
        puts return_continue
        gets.chomp
        puts "Note: " + Rainbow("Juno").green + " and " + Rainbow("Bindi").green + " both need 60 min walks and can be walked together! "
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
    case user_input
    when "1"
        puts chosen_dog + Rainbow("Buster!").green + confirm + Rainbow(" Y/N ?").orange
        gets.chomp.to_i
        puts "Great, You have confirmed you will take " + Rainbow("Buster ").green + "for a " + Rainbow("30 min ").red + "walk."
        puts return_continue
        gets.chomp
        puts "You will be paid " + Rainbow("$20 ").red + "for this walk!"
        puts return_main_menu
    when "2"
        puts chosen_dog + Rainbow("Juno!").green + confirm + Rainbow(" Y/N ?").orange
        gets.chomp.to_i
        puts "Great, You have confirmed you will take " + Rainbow("Juno ").green + "for a " + Rainbow("60 min ").red + "walk."
        puts return_continue
        gets.chomp
        puts "You will be paid " + Rainbow("$30 ").red + "for this walk!"
        puts return_main_menu
    when "3"
        puts chosen_dog + Rainbow("Fluffy!").green + confirm + Rainbow(" Y/N ?").orange
        gets.chomp.to_i
        puts "Great, You have confirmed you will take " + Rainbow("Fluffy ").green + "for a " + Rainbow("45 min ").red + "walk."
        puts return_continue
        gets.chomp
        puts "You will be paid " + Rainbow("$25 ").red + "for this walk!"
        puts return_main_menu
    when "4"
        puts chosen_dog + Rainbow("Bindi!").green + confirm + Rainbow(" Y/N ?").orange
        gets.chomp.to_i
        puts "Great, You have confirmed you will take " + Rainbow("Bindi ").green + "for a " + Rainbow("60 min ").red + "walk."
        puts return_continue
        gets.chomp
        puts "You will be paid " + Rainbow("$30 ").red + "for this walk!"
        puts return_main_menu
    when "5"
        puts chosen_dog + Rainbow("Juno & Bindi").green + confirm + Rainbow(" Y/N ?").orange
        gets.chomp.to_i
        puts "Great, You have confirmed you will take " + Rainbow("Juno & Bindi ").green + "for a " + Rainbow("60 min ").red + "walk."
        puts return_continue
        gets.chomp
        puts "You will be paid " + Rainbow("$40 ").red + "for this walk!"
        puts return_main_menu
    else
        puts invalid
    end
        gets.chomp

    when "2"
        puts Rainbow("Future/Upcoming Jobs").blue
        puts " Name:    Breed:   Age:   Walk-duration:  Time/24hrs:  Date:"
        dog1 = Dog.new("1. Cooper", "Labrador", 4, "12:00", "03/05/2022")
        dog1.walk(30)
        # dog1.future_walk(1200)
        dog1.display_future_walk
        dog2 = Dog.new("2. Koda", "Border Collie", 2, "11:00", "08/05/2022")
        dog2.walk(60)
        # dog2.future_walk(1100)
        dog2.display_future_walk
        dog3 = Dog.new("3. Sandy", "Groodle", 3, "13:00", "12/05/2022")
        dog3.walk(45)
        # dog3.future_walk(1300)
        dog3.display_future_walk
        dog4 = Dog.new("4. Bailey", "Springer Spanial", 2, "13:30", "28/07/2022")
        dog4.walk(60)
        # dog4.future_walk(1300)
        dog4.display_future_walk
        dog5 = Dog.new("5. Harley", "Australian Shepherd", 5, "15:00", "21/06/2022")
        dog5.walk(60)
        # dog5.future_walk(1500)
        dog5.display_future_walk
        dog6 = Dog.new("6. Thor", "Australian Cattle Dog", 2, "11:00", "17/06/2022")
        dog6.walk(60)
        # dog6.future_walk(1100)
        dog6.display_future_walk
        dog7 = Dog.new("7. Teddy", "Groodle", 3, "12:30", "13/05/2022")
        dog7.walk(45)
        # dog7.future_walk(1200)
        dog7.display_future_walk
        dog8 = Dog.new("8. Benji", "Border Collie", 6, "16:00", "20/06/2022")
        dog8.walk(30)
        # dog8.future_walk(1600)
        dog8.display_future_walk
        dog9 = Dog.new("9. Piper", "Springer Spanial", 4, "17:00", "05/05/2022")
        dog9.walk(30)
        # dog9.future_walk(1700)
        dog9.display_future_walk
        dog10 = Dog.new("10. Peanut", "Beagle", 1, "16:00", "14/05/2022")
        dog10.walk(30)
        # dog10.future_walk(1200)
        dog10.display_future_walk
        puts Rainbow("return/enter for main menu!").orange
        gets.chomp
    when "3"
        puts "Past Jobs"
    when "4"
        puts Rainbow("Thank You, Have A Nice Day!").orange
        break
    else
        puts Rainbow("Invalid Entry, Try Again!").red
    end
end
