def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  [1,2,3,4,5,6,7,8,9,10,11].sample
end

def display_card_total(int)
  puts "Your cards add up to #{int}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(int)
  puts "Sorry, you hit #{int}. Thanks for playing!"
end

def initial_round
  int = (deal_card + deal_card)
  display_card_total(int)
  return int
end

def hit?(int3)
  prompt_user
  int3
  input = get_user_input
  if input == "s"
    int3
  elsif input == "h"
    int3 +deal_card
    else invalid_command
  end
  end

def invalid_command
  puts "Please enter a valid command"
end

def runner
  welcome
  int = initial_round
  until int > 21
      int = hit?(int)
    display_card_total(int)
  end
end_game(int)
end
