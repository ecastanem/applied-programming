ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
suits = ["Clubs", "Diamonds", "Hearts", "Spades"]

 #puts "#{ranks[0]} of #{suits[0]}"
 #puts "#{ranks[1]} of #{suits[0]}"
 #puts "#{ranks[2]} of #{suits[0]}"
# etc, etc, etc

# for rank in ranks
#   for suit in suits
#     puts "#{rank} of #{suit}"
#   end
# end

#ECM's Solution
deck ={
    :ranks_labels => [ranks], :suits_labels => [suits]
}

for i in (0...suits.length) 
    for j in (0...ranks.length)
        puts "#{deck[:ranks_labels][0][j]} of #{deck[:suits_labels][0][i]}"
    end
end

puts "Your random card is:  #{deck[:ranks_labels][0][rand(0...ranks.length)]} of #{deck[:suits_labels][0][rand(0...suits.length)]}."

#Brian's Solution

deck =[]

for rank in ranks 
    for suit in suits
        deck << "#{rank} of #{suit}"
    end
end

shuffle_deck = deck.shuffle
hand = shuffle_deck[0,5]

puts hand.inspect