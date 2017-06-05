class MinilangRuntimeError < RuntimeError
end

class InvalidTokenError < MinilangRuntimeError; end
class EmptyStackError < MinilangRuntimeError; end

class Minilang
  attr_accessor :register, :stack

  def initialize(str)
    @input = str.split
    @register = 0
    @stack = []
  end

  def eval
    @input.each do |x|
      if is_a_number?(x)
        number = x.to_i
        @register = number
      elsif x == "PUSH"
        push
      elsif x == "ADD"
        add
      elsif x == "SUB"
        sub
      elsif x == "MULT"
        mult
      elsif x == "DIV"
        div
      elsif x == "MOD"
        mod
      elsif x == "POP"
        @register = pop
      elsif x == "PRINT"
        puts register
      else
        raise InvalidTokenError, "Invalid Token: #{x}"
        exit
      end
    end
  end

  def is_a_number?(item)
    item.to_i.to_s == item
  end

  def stack_empty?
    @stack.empty?
  end

  def add
    @register += pop
  end

  def push
    @stack << @register
  end

  def sub
    @register -= pop
  end

  def mult
    @register *= pop
  end

  def div
    @register /= pop
  end

  def mod
    @register %= pop
  end

  def pop
    if stack_empty?
      raise EmptyStackError, "Empty stack!"
      exit
    else
      @stack.pop
    end
  end
end

#Minilang.new('PRINT').eval
# 0

#Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

#Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# # 5
# # 3
# # 8

#Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# # 10
# # 5

Minilang.new('5 PUSH POP POP PRINT').eval
# # Empty stack!

#Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# # 6

#Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# # 12

#Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# # Invalid token: XSUB

#Minilang.new('-3 PUSH 5 SUB PRINT').eval
# # 8

#Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)