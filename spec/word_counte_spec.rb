require_relative '../lib/world_counte'

describ "the world_counter method" do

it "renvoyer le nombre d'occurrences de chaque mot" do
    dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]


    expect(word_counter("below", dictionary)).to eq({"below"=>1, "low"=>1})
    expect(word_counter("Howdy partner, sit down! How's it going?", dictionary))

end

end