defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "creates a deck" do
    assert Cards.create_deck() == [
             "Ace of Clubs",
             "Two of Clubs",
             "Three of Clubs",
             "Four of Clubs",
             "Five of Clubs",
             "Six of Clubs",
             "Seven of Clubs",
             "Eight of Clubs",
             "Nine of Clubs",
             "Ten of Clubs",
             "Jack of Clubs",
             "Queen of Clubs",
             "King of Clubs",
             "Ace of Diamonds",
             "Two of Diamonds",
             "Three of Diamonds",
             "Four of Diamonds",
             "Five of Diamonds",
             "Six of Diamonds",
             "Seven of Diamonds",
             "Eight of Diamonds",
             "Nine of Diamonds",
             "Ten of Diamonds",
             "Jack of Diamonds",
             "Queen of Diamonds",
             "King of Diamonds",
             "Ace of Hearts",
             "Two of Hearts",
             "Three of Hearts",
             "Four of Hearts",
             "Five of Hearts",
             "Six of Hearts",
             "Seven of Hearts",
             "Eight of Hearts",
             "Nine of Hearts",
             "Ten of Hearts",
             "Jack of Hearts",
             "Queen of Hearts",
             "King of Hearts",
             "Ace of Spades",
             "Two of Spades",
             "Three of Spades",
             "Four of Spades",
             "Five of Spades",
             "Six of Spades",
             "Seven of Spades",
             "Eight of Spades",
             "Nine of Spades",
             "Ten of Spades",
             "Jack of Spades",
             "Queen of Spades",
             "King of Spades"
           ]
  end

  test "shuffles a deck" do
    deck = Cards.create_deck()
    assert Cards.shuffle(deck) != deck
  end

  test "contains a card" do
    deck = Cards.create_deck()
    assert Cards.contains?(deck, "Nine of Hearts")
  end
end
