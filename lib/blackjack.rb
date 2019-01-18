def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table".
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total (card_total)
  # code #display_card_total here
  puts  "Your cards add up to #{card_total}".
end

def prompt_user
  # code #prompt_user here
  "Type 'h' to hit or 's' to stay".
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game (card_total)
  # code #end_game here
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  display_card_total(deal_card + deal_card)
end

def hit? (number)
  # code hit? here
  prompt_user
  input = get_user_input

  if input.downcase == "h"
    number += deal_card
  elsif input.downcase == "s"
    number
  else
    invalid_command
    number
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
end
