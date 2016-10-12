require './app'
require 'spec_helper'
require 'player'

describe Player do
  it "returns its name", focus: :true do
    sign_in_and_play
    player = Player.new("Asif")
    expect(player.name).to eq("Asif")
  end
end
