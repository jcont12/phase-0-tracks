
require_relative "game"

describe Guessgame do
  let(:game) { Guessgame.new }

  it "adds a word" do
    expect(game.add("word")).to eq ["word"]
  end

end