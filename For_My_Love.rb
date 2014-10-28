require_relative 'TypeWriter'
require_relative 'ansi_color_helper'

#My obsessive thoughts of you..
Some_Words = ["I love it when I feel your sweet tender lips apon mine.",
			"You make me blush.",
			 "I wish you were mine.",
			 "Your luscious skin, moisturised and glossy.",
			 "Oh How I long to feel you.",
			 "You are a beautiful human..."]

Some_Colours = ["white"]

#I get a new sheet of paper.
system('clear')

#I pick my color, symbolizing your purity.
Some_Words.map! {|word| word.send(Some_Colours.sample)}

#I shuffle through the lines, unsure of how to depict what I feel..
Some_Words.shuffle!

#Here is my Rose, that blossoms for you.
Some_Words.push(ANSI_Rose.new.to_s)

#I Type tirelessly, thinking of you with every stroke.
TypeWriter.write(Some_Words.join("\n"))

#I Sign my name slowly, bathing in the thought of you. 
TypeWriter.sign("\nLove,\n~Sal..".red)



