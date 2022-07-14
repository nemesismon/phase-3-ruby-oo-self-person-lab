# your code goes here

class Person
    attr_reader :name, :bank_account, :happiness, :hygiene

    def initialize(person_name)
        @name = person_name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account=(money)
        @bank_account = money
    end

    def happiness=(mood)
        if mood > 10
            @happiness = 10
        elsif mood < 0
            @happiness = 0
        else
            @happiness = mood
        end
    end

    def hygiene=(wash)
        if wash > 10
            @hygiene = 10
        elsif wash < 0
            @hygiene = 0
        else
            @hygiene = wash
        end
    end

    def clean?
        self.hygiene > 7 ? true : false
    end

    def happy?
        self.happiness > 7 ? true : false
    end

    def get_paid(money)
        self.bank_account += money
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end
