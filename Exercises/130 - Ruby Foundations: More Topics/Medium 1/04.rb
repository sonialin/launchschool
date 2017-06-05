# raven, finch, *raptors = %w(raven finch hawk eagle)
# p raven # => 'raven'
# p finch # => 'finch'
# p raptors  # => ['hawk','eagle']

animals = %w(raven finch hawk eagle)

def group(things)
  yield(things)
end

group(animals) do |_, _, *raptors|
  puts "Raptors: "
  raptors.each {|raptor| puts "#{raptor}"}
end