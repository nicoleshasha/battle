require 'game'
require './app'
require 'spec_helper'

describe Game do

	subject(:game) {described_class.new}
	let(:asif) { double(:player) }

  describe '#attack' do
    it "damages the player" do
      expect(asif).to receive(:receive_damage)
      game.attack(asif)
    end
  end

end