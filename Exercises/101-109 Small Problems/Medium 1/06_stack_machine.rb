def minilang(str)
  cmd = str.split(" ")
  stack = []
  if cmd[0].to_i == 0 && cmd[0] != '0' # meaning it's a string
    register = 0
  else
    register = cmd[0].to_i
    cmd.shift
  end

  cmd.each do |op|
    case 
    when op == 'PRINT'
      puts register
    when op == 'PUSH'
      stack << register
    when op == 'ADD'
      register += stack.pop
    when op == 'SUB'
      register -= stack.pop
    when op == 'MULT'
      register *= stack.pop
    when op == 'DIV'
      register /= stack.pop
    when op == 'MOD'
      register %= stack.pop
    when op == 'POP'
      register = stack.pop
    when (op.to_i.to_s == op)
      register = op.to_i
    end
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

minilang('5 PUSH POP PRINT')
# # 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

minilang('-3 PUSH 5 SUB PRINT')
# # 8

minilang('6 PUSH')
# # (nothing printed; no PRINT commands)
