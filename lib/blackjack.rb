def welcome
  puts"Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts"Your cards add up to #{card_total}"
  card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  #get_user_input
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
  sum
end

def hit?(number)

  #display_card_total(number)
  prompt_user
  get_user_input
  number = initial_round #sum of two cards
  if get_user_input == "s"
    prompt_user
    get_user_input
  elsif get_user_input == "h"
    number += deal_card # should be the sum of the #initial_round + #deal_card
  else
    invalid_command
    prompt_user
  end
  number

end

def invalid_command
  puts "Please enter valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
