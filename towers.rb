# create 3 stacks with set number of discs 
# create method that will pop off from the TOP (aka last index) of a stack
# create method that will push onto the TOP (aka last index) of the other stack
# set condition if that set number of discs == last tower, the player wins.
class Stack
    def initialize
      @store = Array.new
    end
    
    def pop
      @store.pop
    end
    
    def push(element)
      @store.push(element)
      self
    end
    
    def size
      @store.size
    end
  end

class TowersOfHanoi

    attr_accessor :discs, :stack_a, :stack_b, :stack_c 

    def initialize(discs)
        @discs = discs
        @stack_a = []
        @stack_b = []
        @stack_c = []
    end

    def play 
        for i in 1..discs
            stack_a.push(i)
        end
        stack_a.reverse!
        puts "Welcome to Tower of Hanoi!"
        puts "To win, Tower C must be what Tower A was originally:"
        puts "[5,4,3,2,1]"
        puts "Instructions:"
        puts "Enter from which stack you'd like to move from and to"
        puts "by entering which tower you want to pop off from"
        puts "and then entering which tower you want to push onto."
        puts "Current board:"
        puts "Tower A => " + "#{stack_a}"
        puts "Tower B => " + "#{stack_b}"
        puts "Tower C => " + "#{stack_c}"
        @stack_lengths = [stack_a.length, stack_b.length, stack_c.length]
        p @stack_lengths
        puts "Enter move"
        while stack_c != [5, 4, 3, 2, 1]
            user_move = gets.chomp
                if (user_move == "Tower A") 
                    if (stack_a.last != nil)
                        stack = stack_a.pop
                    elsif (stack_a.last == nil)
                        break
                    end
                elsif (user_move == "Tower B")
                    if (stack_b.last != nil)
                        stack = stack_b.pop
                    elsif (stack_b.last == nil)
                        break
                    end
                elsif (user_move == "Tower C") 
                    if (stack_c.last == nil)
                        stack = stack_c.pop
                    elsif (stack_c.last == nil)
                        break
                    end
                elsif user_move == "q"
                    "Thank you for playing!"
                    exit
                end
            user_move2 = gets.chomp
                if (user_move2 == "Tower A")
                    stack_a.push(stack)
                elsif (user_move2 == "Tower B") 
                    stack_b.push(stack)
                elsif (user_move2 == "Tower C") 
                    stack_c.push(stack)
                elsif (user_move2 == "Tower A") 
                    if (stack_a.last == nil)
                        puts "You cannot put a bigger number on top of a smaller number"
                    end
                elsif (user_move2 == "Tower B") 
                    if (stack_b.last == nil)
                        puts "You cannot put a bigger number on top of a smaller number"
                    end
                elsif (user_move2 == "Tower C")
                    if (stack_c.last == nil)
                        puts "You cannot put a bigger number on top of a smaller number"
                    end
                end
            puts "Tower A => " + "#{stack_a}"
            puts "Tower B => " + "#{stack_b}"
            puts "Tower C => " + "#{stack_c}"
            @stack_lengths = [stack_a.length, stack_b.length, stack_c.length]
            p @stack_lengths
        end
    end

end

t=TowersOfHanoi.new(5)
t.play