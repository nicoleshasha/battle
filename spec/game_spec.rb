require 'game'
require './app'
require 'spec_helper'

describe Game do

	let(:asif) { double(:player) }
	let(:nicole) {double(:player)}

	subject(:game) {described_class.new(nicole, asif)}

  describe '#attack' do
    it "damages the player" do
      expect(asif).to receive(:receive_damage)
      game.attack(game.player2)
    end
  end

  describe '#player_1' do
  	it 'retrieves the first player' do
  		expect(game.player1).to eq nicole
  	end
  end

  describe '#player_2' do
  	it 'retrieves the second player' do
  		expect(game.player2).to eq asif
  	end
  end


end