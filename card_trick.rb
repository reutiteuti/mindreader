class Card
    attr_reader :value, :suit
    def initialize(value, suit)
        @value = value
        @suit = suit
    end
end


suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
values = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]
@deck = []
suits.each do |suit|
    values.each do |value|
        x = Card.new(value, suit)
        @deck << "#{x.value} of #{x.suit}"
    end
end


@deck.shuffle!

@top = []
@middle = []
@bottom = []

def deal
    until @deck.length == 0
        @top << @deck.pop
        @middle << @deck.pop
        @bottom << @deck.pop
    end
end
def run
    puts "Think of a Card"

    def correct_on_top
        puts "Yes or No: Is your card in this deck:"
        @top.each do |x|
            puts x
        end
        response = gets.chomp!
        if response == "yes"
            @top, @middle, @bottom = @top, @middle, @bottom
            @deck = []
            @top.each do |x|
                @deck << x
            end
            @middle.each do |x|
                @deck << x
            end
            @bottom.each do |x|
                @deck << x
            end
            @top, @middle, @bottom = [], [], []
            system('cls')
        else
            puts "Yes or No: Is your card in this deck:"
            @middle.each do |x|
                puts x
            end
            response = gets.chomp!
            if response == "yes"
                @top, @middle, @bottom = @middle, @top, @bottom
                @deck = []
                @top.each do |x|
                    @deck << x
                end
                @middle.each do |x|
                    @deck << x
                end
                @bottom.each do |x|
                    @deck << x
                end
                @top, @middle, @bottom = [], [], []
                system('cls')
            else
                @top, @middle, @bottom = @bottom, @top, @middle
                @deck = []
                @top.each do |x|
                    @deck << x
                end
                @middle.each do |x|
                    @deck << x
                end
                @bottom.each do |x|
                    @deck << x
                end
                @top, @middle, @bottom = [], [], []
                system('cls')
            end
        end
    end

    def correct_on_bottom
        puts "Yes or No: Is your card in this deck:"
        @top.each do |x|
            puts x
        end
        response = gets.chomp!
        if response == "yes"
            @top, @middle, @bottom = @middle, @bottom, @top
            @deck = []
            @top.each do |x|
                @deck << x
            end
            @middle.each do |x|
                @deck << x
            end
            @bottom.each do |x|
                @deck << x
            end
            @top, @middle, @bottom = [], [], []
            system('cls')
        else
            puts "Yes or No: Is your card in this deck:"
            @middle.each do |x|
                puts x
            end
            response = gets.chomp!
            if response == "yes"
                @top, @middle, @bottom = @top, @bottom, @middle
                @deck = []
                @top.each do |x|
                    @deck << x
                end
                @middle.each do |x|
                    @deck << x
                end
                @bottom.each do |x|
                    @deck << x
                end
                @top, @middle, @bottom = [], [], []
                system('cls')
            else
                @top, @middle, @bottom = @top, @middle, @bottom
                @deck = []
                @top.each do |x|
                    @deck << x
                end
                @middle.each do |x|
                    @deck << x
                end
                @bottom.each do |x|
                    @deck << x
                end
                @top, @middle, @bottom = [], [], []
                system('cls')
            end
        end
    end
    system('cls')
    deal
    correct_on_top
    system('cls')
    deal
    correct_on_bottom
    system('cls')
    deal
    correct_on_top
    system('cls')
    deal
    correct_on_bottom
    deal
    correct_on_top
    puts "Your card is #{@deck[0]}"
end

run