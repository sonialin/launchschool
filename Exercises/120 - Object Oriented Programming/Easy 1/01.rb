class Banner
  def initialize(message)
    @message = message
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    num_of_dashes = @message.length + 2
    result = ['+']
    num_of_dashes.times {result << '-'}
    result << '+'
    result.join
  end

  def empty_line
    num_of_spaces = @message.length + 2
    result = ['|']
    num_of_spaces.times {result << ' '}
    result << '|'
    result.join
  end

  def message_line
    "| #{@message} |"
  end
end

banner = Banner.new('To boldly go where no one has gone before.')
puts banner

banner = Banner.new('')
puts banner