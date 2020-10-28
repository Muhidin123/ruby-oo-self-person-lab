# your code goes here

class Person

    attr_reader :name
    attr_accessor :balance, :happiness, :hygiene

    def initialize(name, balance=25, happiness=8, hygiene=8)
        @name = name
        @balance = balance
        @happiness = happiness
        @hygiene = hygiene
    end

    def name
        @name
    end

    def bank_account
        balance
    end

    def bank_account=(balance)
        @balance += balance
    end

    def happiness
        @happiness
    end

    def happiness=(happiness)
        if happiness < 0
            @happiness = 0
        elsif happiness <= 10 && happiness != 0
            @happiness = happiness
        else happiness > 10
            @happiness = 10
        end
    end

    def hygiene
        @hygiene
    end

    def hygiene=(hygiene)
        if hygiene < 0
            @hygiene = 0
        elsif hygiene > 10
            @hygiene = 10
        else hygiene <= 10
            @hygiene = hygiene
        end
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @balance += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(felix)
        self.happiness += 3
        felix.happiness += 3
        return "Hi #{felix.name}! It's #{name}. How are you?"
    end

    def start_conversation(instance, topic)
        if topic == "politics"
            self.happiness -= 2
            instance.happiness -= 2
            return 'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness += 1
            instance.happiness += 1
            return  'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    end

end