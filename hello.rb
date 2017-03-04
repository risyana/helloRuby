class BosTukangSapa
	attr_accessor :names
	
	def initialize(names = "kamuh")
		@names = names
	end
	
	def say_hai
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("each")
			@names.each do |name|
				puts "Hello #{name}"
			end
		else
			puts "Hello #{@names} "
		end
	end
	
	def say_bye
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("join")
			puts "goodbye #{@names.join(", ")}. see you !"
		else
			puts "goodbye #{@names}"
		end
	end
	
	if __FILE__ == $0
		a = BosTukangSapa.new
		a.say_hai
		a.say_bye
		
		a.names = "laili"
		a.say_hai
		a.say_bye
		
		a.names = ["joko","doni","yono"]
		a.say_hai
		a.say_bye
		
		a.names = nil
		a.say_hai
		a.say_bye
	end
	
	end