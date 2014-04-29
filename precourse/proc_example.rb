#proc_example

talk = Proc.new do 
	puts "I am talking"
end

talk.call

speak = Proc.new do |name|
	puts "Now I'm speaking with #{name}"
end

speak.call "Cullen"

#---

proc = Proc.new do |number|
	puts "#{number}. Proc being called in the method!"
end

def take_proc(proc)
	[1,2,3,4,5].each do |number|
		proc.call number
	end
end

take_proc(proc)
