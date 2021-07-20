class Player
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def alert_invalid_guess(letter)
        puts "#{letter} is not a valid guess!"
        puts "Your guess must be a letter of the alphabet."
      end

    def guess(fragment)
        prompt(fragment)
        gets.chomp.downcase
    end

    def inspect
        "HumanPlayer: #{@name}"
    end

    def to_s
        name
    end

    private
    
    def prompt(fragment)
        puts "The current fragment is '#{fragment}'."
        print "Add a letter: "
    end
end