require 'game'
require './app'
require 'spec_helper'

describe Game do

	let(:player1) { double(:player) }
	let(:player2) {double(:player)}

	subject(:game) {described_class.new(player1, player2)}

  describe '#attack' do
    it "damages the player" do
      expect(player2).to receive(:receive_damage)
      game.attack(game.player2)
    end
  end

  describe '#player_1' do
  	it 'retrieves the first player' do
  		expect(game.player1).to eq player1
  	end
  end

  describe '#player_2' do
  	it 'retrieves the second player' do
  		expect(game.player2).to eq player2
  	end
  end

	describe '#swap_turns' do
		it 'swaps the target player' do
			allow(player2).to receive(:receive_damage)
			game.attack(game.player2)
			expect(game.target_player).to eq player1
		end
		it 'swaps the attacking player' do
			allow(player2).to receive(:receive_damage)
			game.attack(game.player2)
			expect(game.attacking_player).to eq player2
		end
	end
end
