require 'term/ansicolor'

#Use as A MixIn, this makes all strings compatible with this.
class String
  include Term::ANSIColor
end

# This class is a Rose ASCII Art that uses ANSIColor
# It can be used like so:
# 
# 		puts ANSI_Rose.new
# 		
# it returns an colored ascii Rose.
# 
class ANSI_Rose
	def initialize()
		@bud   = "@".red
		@leaf  = ";".green.dark
		@stem  = "-".green
	end

	def to_s
		@stem*3+@leaf+@bud
	end
end
