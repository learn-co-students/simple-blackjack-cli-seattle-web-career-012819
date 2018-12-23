def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(11)+1
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  total
end

def prompt_user
  puts"Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(final_total)
  puts "Sorry, you hit #{final_total}. Thanks for playing!"
end

def initial_round
  value = deal_card + deal_card
  display_card_total(value)
  value
end

def hit?(total)
  prompt_user
  user_input = get_user_input

  case user_input
  when "h"
    return display_card_total(total + deal_card)
  when "s"
    return total
  else # keeps prompting until user selects valid option
    print "That is not an opton... "
    return hit?
  end
end

def invalid_command (hi)
  return bob
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  while(total <= 21) do
    total = hit?(total)
  end
  end_game(total)
end
