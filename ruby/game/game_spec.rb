
require_relative "game"

describe Guessgame do
  let(:game) { Guessgame.new }

  it "adds a word" do
    expect(game.add("Word")).to eq [["w","o","r","d"]]
  end

  it "Hides word into '_ _ _ _' format" do
  	expect(game.hide("Word")).to eq ["_","_","_","_"]
  end

  it "Substitutes guessed letters into hidden word format if letter is there" do
  	game.add("Word")
  	game.hide("Word")
  	game.guess("a")
  	game.guess("o")
  	expect(game.hidden_word).to eq ["_","o","_","_"]
  end

end