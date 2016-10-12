require './app'
require 'spec_helper'
require 'player'

describe Player do
  subject(:asif) { Player.new('Asif') }
  subject(:nicole) { Player.new('Nicole') }

  describe '#name' do
  it "returns its name", focus: :true do
    expect(asif.name).to eq("Asif")
    end
  end

  describe '#hp' do
    it "returns the hit points" do
      expect(asif.hp).to eq described_class::DEFAULT_HP
    end
  end

  describe '#attack' do
    it "damages the player" do
      expect(asif).to receive(:receive_damage)
      nicole.attack(asif)
    end
  end

  describe '#receive_damage' do
    it "reduces player hp" do
      expect {asif.receive_damage}.to change {asif.hp}.by (-10)
    end
  end
end
