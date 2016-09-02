def execute(&block)
  block.call
end

block { puts "Hello from inside the execute method!" }