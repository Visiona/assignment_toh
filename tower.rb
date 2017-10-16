def render(rods, height)
  puts "#{rods}"
  fixed_height = height
  rods_int = rods.dup
  until height == 0
    rods_int.each do |rod_no|
      if rod_no[height-1] == nil
        print "  " * 4 + "  ".center(height*2) #if no disks are on the rod
      else #if the disk size is odd so we can align it
        #print ("  "*4 + " " * 1 + "  "*((fixed_height - rod_no[height-1])/2) + "==" * rod_no[height-1] + " " * 1 + "  "*((fixed_height*2-rod_no[height-1]*2)/4))
        print "  " * 4 + ("=="* rod_no[height-1]).center(height*2)
      end
    end
    print "\n"
    height -= 1
  end
  1.upto(3) {|i| print ("  "*4 + "  "*(fixed_height/2) + "#{i}" + " "*(fixed_height/2+i))}
  print "\n"
end

def is_valid(move, height)
  if move.length == 3 && (1..3) === move[0].to_i && (1..3) === move[2].to_i && "," == move[1]
    true
  else
    puts "You have typed incorrect parameters."
  end
end

def tower_of_hanoi(height)

  #Creating initial rodes with disks
  rod_1, rod_2, rod_3 = Array.new, Array.new, Array.new
  height.downto(1) {|h| rod_1 << h}
  rods = [rod_1, rod_2, rod_3]

  puts "Welcome to Tower of Hanoi!"
  puts "Instructions:"

  until rod_1.empty? && (rod_2.empty? || rod_3.empty?)
    puts "Enter where you'd like to move from and to in the format '1,3'."
    puts "Enter 'q' to quit."
    puts "Current Board:"
    render(rods, height)
    puts "Enter move >"
    move = gets.chomp

    if move == "q"
      puts "Thank you for playing with us. Good Bye."
      break
    end

    if is_valid(move, height)# checks if user typed exactly integer followed by coma and another integer instead of ie. true
      move = move.split(",").map{|s| s.to_i}
      if rods[move[0]-1].empty?
        puts "You are trying to move disk from an empty rod. Please try again."
      elsif rods[move[1]-1].length > 0
        if rods[move[0]-1].last>rods[move[1]-1].last
          puts "You can't put this disk on a smaller one. Please try again."
        else
          rods[move[1]-1] << rods[move[0]-1].pop # we are moving disk as instructed by the player
        end
      else
        rods[move[1]-1] << rods[move[0]-1].pop
      end
    end
    puts "Congratulations. You have won the game. Good Job!" if rod_1.empty? && (rod_2.empty? || rod_3.empty?)
  end
end

tower_of_hanoi(4)
