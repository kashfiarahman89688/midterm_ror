class Troll
	 attr_accessor :ugliness, :smelliness, :strength
	 def initialize(grunt)
		speak(grunt)
	 end
	 def speak(grunt)
	 	1.upto(42) { puts "#{grunt}" }
	 end
	 def reverse(a)
	 	puts a.reverse!
	 end
	 def self.propagate(grunt)
	 	puts "#{grunt}"
	 end
	 def fight
	 	puts "True"
	 end
	 t = Troll.new("UNGAH")
	 t.reverse("UNGAH")
	 fred = Troll.new("UNGAH")
	 fred.respond_to?("fight")
end

Troll.propagate("eegah")
