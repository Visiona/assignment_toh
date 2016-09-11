=begin

def play

end

def tower_of_hanoi(height)

end
=end
height = 5
puts "Welcome to Tower of Hanoi!"
puts "Instructions:"
puts "Enter where you'd like to move from and to in the format '1,3'."
puts "Enter 'q' to quit."
puts "Current Board:"

#Full stack generated
rod_1 = Array.new(height)
rod_1.inject(height) {|total| total - 1}
rod_2 = Array.new(height)
rod_3 = Array.new(height)

puts "#{rod_1}, #{rod_2}, #{rod_3}"

puts "Enter move >"
move = gets.chomp.split(",")



# Current Board:
# o
# oo
# ooo
# 1    2    3
# Enter move >
# ...
#def render - prints out the current state of the game board in between turns
#Create a game loop that finishes when the user either quits (for instance, by entering quit on the input line) or wins.

=begin
#PSEUDOCODE
1.Start the game by initiating height, hello message and rules
2.Image of current Board so the correct is there
3. Invitation to start the game or quit
4. enter movement
5. Again message appears to enter movement and image of current rod is seen
6. If user enters quit - game end with adequate message
7. If user enters movement frmo an empty rod or to a rod with a top smaller disk, repeats the message to enter and image
8. If user enters incorrect movement - adequate message appears - Check for valid user inputs
9. If all disks are moved to a different stack, winnig message appears - end of the game
10 
=end
