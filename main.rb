require 'rainbow'

puts Rainbow("Hello! Welcome to Woofz. To begin, please enter your name: ").orange
name = gets.chomp
puts "Hello #{name.capitalize}, Are you ready to walk a dog?:" + Rainbow(" Y/N ?").orange
ready = gets.chomp
puts "Okay, #{name.capitalize}. Let's choose a dog to walk! "

puts "Press " + Rainbow("'return/enter'").orange + " for a list of dogs that need walks today! "
dog = gets.chomp

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

# Note: Juno and Bindi both need 60 min walks and can be walked together!
a = "Press "
b = "return/enter"
puts a + Rainbow(b).orange
gets.chomp
puts "Note: " + Rainbow("Juno").green + " and " + Rainbow("Bindi").green + " both need 60 min walks and can be walked together! "
puts a + Rainbow(b).orange
gets.chomp

#
puts "Which dog would you like to walk? "
a = "To Walk "
b = ", "
c = "Enter: "
puts a + Rainbow("Buster").green + b + c + Rainbow("1").orange
puts a + Rainbow("Juno").green + b + c + Rainbow("2").orange
puts a + Rainbow("Fluffy").green + b + c + Rainbow("3").orange
puts a + Rainbow("Bindi").green + b + c + Rainbow("4").orange
puts a + Rainbow("Juno & Bindi").green + b + c + Rainbow("5").orange

loop do
    puts "Enter Selection Here: "
    selection = gets.chomp.to_i
    break if selection.between?(1, 5)

    puts "Error, please select a valid number "
end

puts "selected "