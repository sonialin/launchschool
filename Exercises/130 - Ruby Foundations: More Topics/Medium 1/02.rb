class TextAnalyzer
  def process
    File.open('test.txt', "r") do |f|
      content = f.read
      yield(content)
    end
  end

end

analyzer = TextAnalyzer.new
analyzer.process { |txt| puts "There are #{txt.split("\n\n").size} paragraphs"}
analyzer.process { |txt| puts "There are #{txt.split("\n").size} lines"}
analyzer.process { |txt| puts "There are #{txt.split.size} words" }