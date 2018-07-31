# create 3 stacks with set number of discs 
# create method that will pop off from the TOP (aka last index) of a stack
# create method that will push onto the TOP (aka last index) of the other stack
# set condition if that set number of discs == last tower, the player wins.


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
            stack_a.push("O")
        end
        puts "Welcome to Tower of Hanoi!"
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
        user_move = gets.chomp
            if user_move == "Tower A"
                stack = stack_a.pop
            elsif user_move == "Tower B"
                stack = stack_b.pop
            elsif user_move == "Tower C"
                stack = stack_c.pop
            end
        user_move2 = gets.chomp
            if user_move2 == "Tower A"
                stack_a.push(stack)
            elsif user_move2 == "Tower B"
                stack_b.push(stack)
            elsif user_move2 == "Tower C"
                stack_c.push(stack)
            end
        puts "Tower A => " + "#{stack_a}"
        puts "Tower B => " + "#{stack_b}"
        puts "Tower C => " + "#{stack_c}"
        @stack_lengths = [stack_a.length, stack_b.length, stack_c.length]
        p @stack_lengths
    end

end

t=TowersOfHanoi.new(5)
t.play