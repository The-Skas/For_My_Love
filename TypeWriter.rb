class TypeWriter
	#Static Methods
	
	#This is how I mash out my key strokes apon this rusty
	#Type writer. It varies in speed, depending on how keen I am on finshing
	#my piece.
	
	def self.write(text, speed = 1.0)
		while(text.empty? == false)
			print text[0]
			
			if(text[0] == "\n")
				 sleep(1/speed)
			elsif(text[0] == ".")
				sleep(0.8/speed)
			elsif(text[0] ==",")
				sleep(0.5/speed)
			else
				sleep(0.05/speed)
			end

			text[0] = ""
		end
		puts("")
	end

	def self.sign(signature)
		self.write(signature, 0.5)
	end
	
	#Instance Methods
	def initialize(text)
		@text = text
		@speed = 1.0
	end
	def speed(speed)
		@speed = speed
	end

	def write
		while(@text.empty? == false)
			print @text[0]
			
			if(@text[0] == "\n")
				 sleep(1/@speed)
			elsif(@text[0] == ".")
				sleep(0.8/@speed)
			elsif(@text[0] ==",")
				sleep(0.5/@speed)
			else
				sleep(0.05/@speed)
			end

			@text[0] = ""
		end
	end



	def setText(txt)
		@text = txt
	end
end