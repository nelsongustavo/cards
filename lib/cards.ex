defmodule Cards do
  @moduledoc """
    Provides methods for creating, shuffling, and dealing a deck of cards.
  """
  @doc """
    Returns a list of strings representing a deck of cards.
  """
  def create_deck do
    values = [
      "Ace",
      "Two",
      "Three",
      "Four",
      "Five",
      "Six",
      "Seven",
      "Eight",
      "Nine",
      "Ten",
      "Jack",
      "Queen",
      "King"
    ]

    suits = ["Clubs", "Diamonds", "Hearts", "Spades"]

    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  @doc """
    Returns true if the deck contains the given card, otherwise false.

  ## Examples

      iex> deck = Cards.create_deck()
      iex> Cards.contains?(deck, "Ace of Spades")
      true
  """
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  @doc """
    Splits the deck into two lists: the hand and the remaining deck.
    The `hand_size` argument determines the size of the hand.

  ## Examples

      iex> deck = Cards.create_deck()
      iex> {hand, remaining_deck} = Cards.deal(deck, 5)
      iex> length(hand)
      5
      iex> length(remaining_deck)
      47
  """
  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  def load(filename) do
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term(binary)
      {:error, _reason} -> "File not found"
    end
  end

  def create_hand(hand_size) do
    Cards.create_deck()
    |> Cards.shuffle()
    |> Cards.deal(hand_size)
  end
end
