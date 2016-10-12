require './app'
require 'spec_helper'
require 'player'

describe Player do
  subject(:asif) { Player.new('Asif') }
  it "returns its name", focus: :true do
    expect(asif.name).to eq("Asif")
  end
end
