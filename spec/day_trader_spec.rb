
require_relative '../lib/day_trader'
describe "the day_trader method" do

    it "envoyer 2ieme jour à l'achat et 5ieme jour à la revente" do
expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
expect(day_trader([23, 5, 16, 15, 5, 3, 40, 9, 1])).to eq([5,6])
    end
end