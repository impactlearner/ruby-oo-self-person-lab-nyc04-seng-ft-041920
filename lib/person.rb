# your code goes here
require 'pry'
class Person
attr_reader :name
attr_accessor :bank_account, :happiness, :hygiene
  def initialize (name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness= (happiness)
    @happiness = happiness.clamp(0,10)
  end

  def hygiene= (hygiene)
    @hygiene = hygiene
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
    @hygiene = 0
    else
      @hygiene
    end
  end
  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end
  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end
  def get_paid (salary)
    @bank_account += salary
    "all about the benjamins"
  end
  def take_bath
    hygiene= @hygiene + 4
    binding.pry
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
def work_out
  @happiness +=2
  @hygiene -=3
  "♪ another one bites the dust ♫"
end
def call_friend(friend)
  @happiness +=3
  friend.happiness +=3
  "Hi#{friend.name}! It's #{@name}. How are you?"
end
def start_conversation (friend, topic)
  if topic == "politics"
    friend.happiness -=1
    @happiness -=1
    "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    friend.happiness +=1
    @happiness +=1
    "blah blah sun blah rain"
  else
    "blah blah blah blah blah"
end

end
end
