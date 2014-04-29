#passing_blocks

def take_block(&block)
	block.call
end

take_block {puts "block being called in the method!!"}

def take_block2(number, &block)
	block.call
end

[1,2,3,4,5].each do |number|
	take_block2 number, do
		puts "BLOCK 2 BEING CALLED IN METHOD #{number}"
	end
end

