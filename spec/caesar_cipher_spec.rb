
require_relative '../lib/caesar_cipher'

describe "the caesar_cipher method" do
    it " prend un string et une clé  pour en sortir le string modifié" do
        #le mot entrer par l'utilisateur est modifier 
        expect(caesar_cipher("what a string", 5)).to eq("bmfy f xywnsl")
    end
end