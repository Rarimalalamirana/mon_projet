dictionary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]



def jean_michel_data(str, dict)

    tab = []

    count = {}

    s = str.split(" ")



    dict.each do |d|

        s.each do |v|

            if v.upcase.include? d.upcase

                if count[d] == nil

                    count[d] = 1

                else

                    count[d] += 1

                end

            end

        end

    end

    puts count

end



f = File.new("shakespeare.txt")

value = f.read.to_s

puts "Les mots du dictionnaire\n"

jean_michel_data(value, dictionary)

f.close



f = File.new("gros_mots.txt")

gros_mots = f.read.to_s.split("\n")

f.close



f = File.new("shakespeare.txt")

value = f.read.to_s

puts "\nVerifions les gros mots :P\n"

jean_michel_data(value, gros_mots)

f.close