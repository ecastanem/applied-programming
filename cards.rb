require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end

get "/" do
  ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "jack", "queen", "king", "ace"]
  suits = ["clubs", "diamonds", "hearts", "spades"]
  deck = []
  for i in (0...suits.length) 
    for j in (0...ranks.length)
        aux="#{ranks[j]}_of_#{suits[i]}"
        deck << aux
    end
  end
  @hand = []
  number_of_cards = 5
  shuffle_deck = deck.shuffle
  @hand = shuffle_deck[0,number_of_cards]
 
  view 'cards'
end