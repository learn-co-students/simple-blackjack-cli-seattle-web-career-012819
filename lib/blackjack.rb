def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card_dealt = 1 + rand(11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(too_many)
  # code #end_game here
  if too_many > 21
    puts "Sorry, you hit #{too_many}. Thanks for playing!"
  else
    puts "You reached #{too_many}, but decided to fold.\r\nBetter luck next time!\r\nYou have exited the game."
  end
end

def initial_round
  # code #initial_round here
  card_sum = 0
  for card in 1..2
    card_sum += deal_card
  end
  display_card_total(card_sum)
  card_sum
end

def hit?(prev_total)
  # code hit? here
  prompt_user
  user_response = get_user_input
  new_total = prev_total
  case user_response
    when "h"
      # Only update the value if 'h' is pressed
      new_total += deal_card
    when "s"
      # Do nothing
    when "exit"
      # Return
      new_total = end_game(new_total)
    else
      # Handle unsupported commands
      invalid_command(user_response)
  end
  new_total
end

def invalid_command(cmd)
  # code invalid_command here
  puts "Sorry, but #{cmd} is an invalid command."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_total = initial_round
  user_exited = false
  until card_total > 21 || user_exited do
    did_user_hit = hit?(card_total)
    user_exited = !!(did_user_hit.respond_to?(:include?) && did_user_hit.include?("Better luck next time!"))
    if user_exited == false
      card_total = did_user_hit
      display_card_total(card_total)
    end
  end
  end_game(card_total)
end
    
