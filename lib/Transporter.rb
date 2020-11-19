class Remaker

  def create_new_file(newfile = "index.html")
    file = File.new("#{filename}", "w")
    file.puts "<!DOCTYPE html>"
    file.puts "<html>"
    file.puts "<head>"
    file.puts "  <title>My HTML</title>"
    file.puts "</head>"
    file.puts "<body>"
    file.puts "<p>[text]</p>"
    file.puts "</body>"
    file.puts "</html>"
    file.close

    template = File.read("#{filename}")
    return template
  end

   def html_for_pet(status)
  	content = File.read("index.html")
  	File.open("pet.html", "w") do |file|
  		content.gsub! "[status]" , status
  		file.puts content
  	end
  end
end

