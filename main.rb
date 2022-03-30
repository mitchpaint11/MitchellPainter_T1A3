puts "Enter Your Name: "
name = gets.chomp()
puts ("Hello " + name)

puts "Are you ready to walk?: Y/N "
ready = gets.chomp()

yes = true
if yes
    puts "Let's go for a walk!"
end 

puts "Pick a dog to walk: Press 'Enter' for list of dogs that need walks! "
dog = gets.chomp()

class Dog
    attr_reader :age, :breed
    attr_accessor :name

    def initialize(name, breed, age)
        @name = name
        @breed = breed
        @age = age
        @walk = []

    end

    def walk(distance_in_kms)
        @walk << distance_in_kms
    end

    def walk_distance
        return @walk.sum
    end

    def display_walk
    puts "#{@name} needs to be walked #{walk_distance} kms "
    # @walk.each_with_index { |distance, index| puts "#{index+1}. #{distance} km " }
    end
end

#Main
dog1 = Dog.new("Buster", "Labrador", 4)
dog1.walk(3)
dog1.display_walk
dog2 = Dog.new("Juno", "Border Collie", 2)
dog2.walk(4)
dog2.display_walk
dog3 = Dog.new("Fluffy", "Groodle", 1)
dog3.walk(5)
dog3.display_walk
dog4 = Dog.new("Bindi", "Springer Spanial", 2)
dog4.walk(4)
dog4.display_walk
gets.chomp
puts "'Juno' and 'Bindi' both need 4 kms and can be walked together! "
