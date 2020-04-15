# Stack Machine Interpretation

# Finds if String value is really an integer
class String
    def is_i?
      /\A[-+]?\d+\z/ === self
    end
  end

def minilang(command)
  # Register initialized to 0
  register = 0
  # Stack is empty array
  stack = []
  # Splits string into an array
  arr = command.split(" ")
  # Converts all strings that are really numbers to integers inside the array
  arr.map! do |x|
    if x.is_i? == true
      x.to_i
    else
      x
    end
  end
  # Command control
  arr.each_with_index do |val, index|
    # If the value is an integer, update the register to this number
    if val.is_a? Integer
      register = val
    elsif val == "PUSH"
      stack << register
    elsif val == "PRINT"
      puts "#{register}"
    elsif val == "ADD" 
      register = register + stack.pop
    elsif val == "SUB"
      register = register - stack.pop
    elsif val == "MULT"
      register = register * stack.pop
    elsif val == "DIV"
      register = register / stack.pop
    elsif val == "MOD"
      register = register % stack.pop
    elsif val == "POP"
      register = stack.pop
    end
  end
end

minilang('PRINT')
minilang('5 PUSH 3 MULT PRINT')
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
minilang('5 PUSH POP PRINT')
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
minilang('-3 PUSH 5 SUB PRINT')
minilang('6 PUSH')

=begin 
# Register = The current value and is not part of the stack.

MULT
1. Multiplies the stack value with the register values
2. Removes the value from the stack
3. Stores the result back in the register.

1. Stack: [3,6,4] (4 is the topmost item in the stack)
2. Register Value: 7
3. MULT: Transforms Stack to: [3,6]
4. MULT: 4*7 = 28
5. Register Value: 28
6. MULT: 6*28 = 168
7. Stack: 3
8. REgister Value: 168

=end

