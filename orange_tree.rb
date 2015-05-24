class OrangeTree
	
	def initialize 
		@age = 0 
		@height = 0.3 
		@yield = 0 
	
		puts "The orange seed you planted has grown into a sapling, what will you call it?"
		@name = gets.chomp
		puts @name + "?!?  What a glorious name!  I see great things in this sprout's future."
		puts @height
	end

		# Creates instance variables of this object upon creation.
		# Prompts user for input and assigns answer to @name.
	
	def talk
		puts "You spend a little time each day talking to " + @name +".		"
		@height += @height * 1.5
		if @yield == 0
			if ((@height >= 1) and (@height < 3))
				@yield +=  2
			elsif ((@height >= 3) and (@height < 7))
				@yield +=  5
			elsif @height >= 7 
				@yield += 10
			else 
			end
			
			puts "Well that certainly helped!  Even if your neighbours did think you were crazy.  Here we are 1 year later and " + @name.to_s + " is now " + @height.to_s + " metres tall and now has " + @yield.to_s + " oranges."
		else
			puts @name + "'s produced all their fruit for this year."
		end
	end
	
		#Method for helping the tree grow.
		# Multiplies height by a factor of 1.5.
		# Increases yield by continually greater number relative to the @height instance variable.
		#Updates user with a string including new values of instance variables.
	
	def sing 
		puts "You serenade " + @name + " once a day."
		@height += @height * 2
		if @yield == 0
			if ((@height >= 1) and (@height < 3))
				@yield +=  4
			elsif ((@height >= 3) and (@height < 7))
				@yield += 10
			elsif @height >= 7
				@yield += 20
			else
			end
			
			puts "That's the trick.  I've never seen such growth!  Here we are 1 year later and " + @name.to_s + " is now " + @height.to_s + " metres tall and now has " + @yield.to_s + " oranges." 
		else
			puts @name + "'s produced all their fruit for this year."
		end
	end
		
		# Similar to talk method above.
		
	def eat oranges
		if @yield >= oranges.to_i
			puts "You can't take it any longer.  Those oranges look too delicious"
			@yield -= oranges
			puts "Mmmm....tasty."
		else 
			puts "There aren't enough oranges."
		end
	end
		
		# Method which allows user to eat their chosen number of oranges, if there are enough.

	def count
		puts "There are " + @yield.to_s + " oranges."
	end
	
		# Allows user to check the number of oranges.
		
	def too_old

		if @height > 150
				puts "There comes a time in person's life when you have to let go of childish fancies such as orange trees.  That time has sadly come.  Many good times were had and oranges ate.  Fairwell dear " + @name + ".  We'll never forget you."
				
				exit
		else
		end
	end
	
	# This method is called by the pass_time method.
	# If the if statement evaluates to true the user is shown message and the program ends.
	
		
	def pass_time
		@age += 1
		@yield = 0
		self.too_old
	end
	
		# Method which increases @age 1 year per call and ends the program when @age increases past 10.
		# Each year that passes resets @yield to 0.
	
end

tree = Orange_Tree.new
tree.talk
tree.count
tree.eat 1
tree.pass_time
tree.sing 
tree.eat 1
tree.count
tree.pass_time
tree.talk
tree.count
tree.eat 1
tree.pass_time
tree.sing 
tree.eat 1
tree.count
tree.pass_time
tree.talk
tree.count
tree.eat 1
tree.pass_time
tree.sing 
tree.eat 1
tree.count
tree.pass_time
tree.sing
tree.pass_time



		