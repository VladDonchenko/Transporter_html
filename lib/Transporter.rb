module MyGem 
class Example
	attr_accessor :text
	def initializate
		@text = text
	end

	def get(param)
		text = param
	end

	def trans(text)
		File.open("index.html","w") do |file|
			file.puts "<!DOCTYPE html>"
			file.puts "<html>"
			file.puts "	<head>"
			file.puts "	 <title>#555</title>"
			file.puts " </head>"
			file.puts " <body>"
			file.puts "	#{text}"
			file.puts "	</boby>"
			file.puts "</html>"
		end
	end
end
end

