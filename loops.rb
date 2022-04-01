require 'rainbow'

class Dog
    attr_reader :age, :breed
    attr_accessor :name

    def initialize(name, breed, age)
        @name = name
        @breed = breed
        @age = age
        @walk = []
    end

    def walk(time_in_mins)
        @walk << time_in_mins
    end

    def walk_time
        return @walk.sum
    end

    def display_walk
    puts Rainbow("#{@name} ").green + "is a " + Rainbow("#{@breed}").red + ", is #{@age} years old and needs a #{walk_time} min walk. "
    end
end

loop do 
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
        puts Rainbow("return/enter ").orange + Rainbow("for a list of dogs that need walks today! ").blue
        gets.chomp

        #Main
        dog1 = Dog.new("1. Buster", "Labrador", 4)
        dog1.walk(30)
        dog1.display_walk
        dog2 = Dog.new("2. Juno", "Border Collie", 2)
        dog2.walk(60)
        dog2.display_walk
        dog3 = Dog.new("3. Fluffy", "Groodle", 3)
        dog3.walk(45)
        dog3.display_walk
        dog4 = Dog.new("4. Bindi", "Springer Spanial", 2)
        dog4.walk(60)
        dog4.display_walk

        # NOTE: Juno and Bindi both need 60 min walks and can be walked together!
        b = Rainbow("return/enter to continue..").orange
        puts b
        gets.chomp
        puts "Note: " + Rainbow("Juno").green + " and " + Rainbow("Bindi").green + " both need 60 min walks and can be walked together! "
        puts b
        gets.chomp

        puts "Which dog would you like to walk? "
        a = "To Walk "
        b = ", "
        c = "Enter: "
        puts a + Rainbow("Buster").green + b + c + Rainbow("1").orange
        puts a + Rainbow("Juno").green + b + c + Rainbow("2").orange
        puts a + Rainbow("Fluffy").green + b + c + Rainbow("3").orange
        puts a + Rainbow("Bindi").green + b + c + Rainbow("4").orange
        puts a + Rainbow("Juno & Bindi").green + b + c + Rainbow("5").orange

        user_input = gets.chomp.capitalize
        # confirm = 0
        # conditional statement: if else logic to take different path based on whether the condition was evaluated to true

        return_main_menu = Rainbow("return/enter for main menu!").orange
        return_continue = "return/enter to continue.."
        c = "You have chosen to walk "
        d = " Confirm"
        invalid = Rainbow("Invalid Entry, Try Again!").red
    if user_input == '1'
        puts c + Rainbow("Buster!").green + d + Rainbow(" Y/N ?").orange
        gets.chomp.to_i
        puts Rainbow("Great, You have confirmed you will take ").blue + Rainbow("Buster ").green + Rainbow("for a ").blue + Rainbow("30 min ").red + Rainbow("walk.").blue
        puts Rainbow(b).orange
        gets.chomp
        puts Rainbow("You will be paid ").blue + Rainbow("$20 ").red + Rainbow("for this walk!").blue
        puts Rainbow(a).orange
    elsif user_input == '2'
        puts c + Rainbow("Juno!").green + d + Rainbow(" Y/N ?").orange
        gets.chomp.to_i
        puts Rainbow("Great, You have confirmed you will take ").blue + Rainbow("Juno ").green + Rainbow("for a ").blue + Rainbow("60 min ").red + Rainbow("walk.").blue
        puts Rainbow(b).orange
        gets.chomp
        puts Rainbow("You will be paid ").blue + Rainbow("$30 ").red + Rainbow("for this walk!").blue
        puts Rainbow(a).orange
    elsif user_input == '3'
        puts c + Rainbow("Fluffy!").green + d + Rainbow(" Y/N ?").orange
        gets.chomp.to_i
        puts Rainbow("Great, You have confirmed you will take ").blue + Rainbow("Fluffy ").green + Rainbow("for a ").blue + Rainbow("45 min ").red + Rainbow("walk.").blue
        puts Rainbow(b).orange
        gets.chomp
        puts Rainbow("You will be paid ").blue + Rainbow("$25 ").red + Rainbow("for this walk!").blue
        puts Rainbow(a).orange
    elsif user_input == '4'
        puts c + Rainbow("Bindi!").green + d + Rainbow(" Y/N ?").orange
        gets.chomp.to_i
        puts Rainbow("Great, You have confirmed you will take ").blue + Rainbow("Bindi ").green + Rainbow("for a ").blue + Rainbow("60 min ").red + Rainbow("walk.").blue
        puts Rainbow(b).orange
        gets.chomp
        puts Rainbow("You will be paid ").blue + Rainbow("$30 ").red + Rainbow("for this walk!").blue
        puts Rainbow(a).orange
    elsif user_input == '5'
        puts c + Rainbow("Juno & Bindi").green + d + Rainbow(" Y/N ?").orange
        gets.chomp.to_i
        puts Rainbow("Great, You have confirmed you will take ").blue + Rainbow("Juno & Bindi ").green + Rainbow("for a ").blue + Rainbow("60 min ").red + Rainbow("walk.").blue
        puts Rainbow(b).orange
        gets.chomp
        puts Rainbow("You will be paid ").blue + Rainbow("$40 ").red + Rainbow("for this walk!").blue
        puts Rainbow(a).orange
    else
        puts invalid
    end
        gets.chomp

    when "2"
        puts "Future/Upcoming Jobs"
    when "3"
        puts "Past Jobs"
    when "4"
        puts Rainbow("Thank You, Have A Nice Day!").orange
        break
    else
        puts invalid
    end
end



#     case choice
#     when "1"
#         puts "Current Jobs"
#         puts Rainbow("To get started, please enter your name: ").orange
#         name = gets.chomp
#         puts "Hello #{name.capitalize}, Are you ready to find a dog to walk?:" + Rainbow(" Y/N ?").orange
#         ready = gets.chomp
#         puts "Okay, #{name.capitalize}. Let's choose a dog to walk! "
#         puts Rainbow("return/enter ").orange + "for a list of dogs that need walks today! "
#         dog = gets.chomp
#     when "2"
#         puts "Future/Upcoming Jobs"
#     when "3"
#         puts "Past Jobs"
#     when "4"
#         puts "Exit!"
#         break
#     else
#         puts "Invalid choice, Try again!"
#     end
# end