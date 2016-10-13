require 'Player'

describe Player do
  subject(:player) {described_class.new("Bob")}
  it 'returns a name' do
    expect(player.name).to eq "Bob"
  end
end