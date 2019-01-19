def welcome
  #a method displays a welcome message
  puts "Welcome to the Blackjack Table"
end

def deal_card
  #this method returns a random card
  return rand 1..11
end

def display_card_total (card_total)
  #this method displays the total sum of cards
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  #a message asks for user input
  puts "Type 'h' to hit or 's' to stay"

end

def get_user_input
  #get the user input
  input = gets.chomp
  return input
end

def end_game (total_card)
  # code #end_game here
  #if total_card >21
  puts "Sorry, you hit #{total_card}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card #first random card
  card2 = deal_card #second random card
  card_sum = card1 + card2 #sum of the two cards
  display_card_total(card_sum) #pass the sum as argument and call display_card_total
  return card_sum
end

def hit? (current_sum)
  # code hit? here
  prompt_user #ask user for input s or h
  user_input = get_user_input #store user's input to a new variable
  if user_input == "h"
    return current_sum += deal_card #deal a new card to user when input is h
  elsif user_input == "s"
    return current_sum #return the sum when input is s
  else
    invalid_command #call the invalid_command method
  end
end

def invalid_command
  #this method informs the user the input was invalid
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome #call welcome method
  initial_sum = initial_round #get the initial two cards
  while initial_sum < 21 #execute this loop until the sum is greater than 21
    initial_sum = hit?(initial_sum) #prompt user to hit or skip
    display_card_total(initial_sum)#display the card sum
  end
  end_game(initial_sum) #this method is call when sum is greater than 21
end
