def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  random = rand(1 .. 11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  choice = gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  sum_cards = first_card + second_card
  display_card_total(sum_cards)
  return sum_cards
end

def hit?(total)
  prompt_user
  choice = get_user_input
  if (choice == "h")
    new_card = deal_card
    return new_card + total
  else 
    return total 
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand = initial_round
  while hand < 21
    updated_hand = hit?(hand)
    display_card_total(updated_hand)
    hand = updated_hand
  end
  end_game(updated_hand)
end
    
