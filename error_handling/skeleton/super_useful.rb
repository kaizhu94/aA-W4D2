# PHASE 2
# class other
require "byebug"
def convert_to_int(str)
  begin
    Integer(str)
  rescue ArgumentError
    return nil 
  end
end
# p convert_to_int("hello")
# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  # if FRUITS.include? maybe_fruit
  #   puts "OMG, thanks so much for the #{maybe_fruit}!"
  # else 
  #   raise StandardError 
  # end 
  raise StandardError if !FRUITS.include? maybe_fruit
  return true
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"
  is_fruit = false
  begin 
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    is_fruit =  reaction(maybe_fruit) 
  rescue  
    # puts "WTF is this, give me a fruit!"
    retry if maybe_fruit == "coffee"
  end
  # debugger
  if is_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else
    puts "Give me that damn fruit!"
  end
end  
 
# p feed_me_a_fruit

# PHASE 4
class NotLongEnoughError < StandardError; end
class NeedStringError < StandardError; end

class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
      raise NotLongEnoughError("Have to be >= 5").new if @yrs_known < 5
      raise NeedStringError("Need a name").new if @name.length == 0
      raise NeedStringError("Need a pasttime").new if @fav_pastime.length == 0
  end

  def talk_about_friendship
    # raise NotLongEnoughError("Have to be >= 5").new if @yrs_known < 5
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    # raise NeedStringError("Need a pasttime").new if @fav_pastime.length == 0
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    # raise NeedStringError("Need a name").new if @name.length == 0
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


