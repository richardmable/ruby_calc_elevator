# Ruby "elevator" by Richard Mable

# Create an Elevator class that has a floor attribute
# Instances of elevator should be aware of what floor they're on, 
# have a method to go up or down, and have a method to
# announce a cheery greeting along with the current floor if the instance is asked ( .greet ) 
# Extra credit: a method to play elevator music.

#create class Elevator, max floors 14
class Elevator
	#user can't edit the floor except by the methods created
	attr_reader :floor

	#The new elevator always starts and floor one and gives directions to user
	#empty "puts" for readability in Terminal.
	def initialize
		@floor = 1
		puts ""
		puts ""
		puts ""
		puts ""
		puts "Welcome to the lobby, you are at floor 1 of a 14 floor elevator."
		puts "******************** ******************** ******************** ******************** ********************"
		puts "Use the method '.up' to go up, '.down' to go down, and 'current_floor' to see what your current floor is."
		puts ""
		puts "Remember, you start on the first floor, and are asked how many additional floors you would like to go up or down."
		puts ""
		puts ""
		puts ""
		puts ""
	end

	# Instance method to go up x amount of floors, by getting user input and adding to
	#the current floor instance.
	def up
		puts "How many floors up?"
		#chomping the return key and making sure input is made into an integer.
		#Typing in gibberish will just keep the elevator on the current floor.
		amount = gets.chomp.to_i
		#check to make sure user can go to a valid floor, running function again if it isn't.
		if amount < 0
			puts "No negative numbers. Use the .down function!"
			up
		elsif @floor + amount > 14
			puts "Sorry, can't go up that far! You'd be above the Hub, no one knows what's up there!"
			up
		else
			@floor = (@floor + amount)
			puts "Now on floor #{@floor}."
			# %x is the command to temporarily stop the program, exit the irb, and use the command line command
			#"say" to verbally tell the user what floor they are on. Program continues in irb afterwards.
			%x{say "You are on the #{@floor} floor!"}
		end
	end

	#Similar instance method as to go up, but to go down.
	def down
		puts "How many floors down?"
		amount = gets.chomp.to_i
		if amount < 0
			puts "No negative numbers. Use the .down function! (With positive numbers.)"
			down
		elsif @floor - amount < 1
			puts "Sorry, can't go down that far!"
			down
		else
			@floor = (@floor - amount)
			puts "Now on floor #{@floor}."
			#Threw in a question mark to change up the intonation.
			%x{say "You are on the #{@floor} floor?"}
		end
	end

	# Instance method to display what floor you are currently on
	def current_floor
		puts "You are currently on floor #{@floor}."
		%x{say "You are on the #{@floor} floor."}
	end
end














