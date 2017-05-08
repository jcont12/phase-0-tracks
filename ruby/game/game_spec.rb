
require_relative "game"

describe Guessgame do
  let(:game) { Guessgame.new }

  it "adds a word" do
    expect(game.add("Word")).to eq [["w","o","r","d"]]
  end

  it "Hides word into '_ _ _ _' format" do
  	expect(game.hide"Word").to eq ["_","_","_","_"]
  end

end