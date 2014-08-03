require 'json'
all_sub_species = Hash.new
sub_species_list = []

class Sub_species
  attr_accessor :name,
                :main_power,
                :secondary_power_1,
                :secondary_power_2,
                :secondary_power_3,
                :primary_weakness,
                :cultural_traits
end

first_sub_species = Sub_species.new
first_sub_species.name = "reptilian"
first_sub_species.main_power = "heat/radiation resistance"
first_sub_species.secondary_power_1 = "multispectrum vision"
first_sub_species.secondary_power_2 = "shel skin"
first_sub_species.secondary_power_3 = "determined"
first_sub_species.primary_weakness = "freezing temprature"
first_sub_species.cultural_traits = "forced to adapt"
sub_species_list << first_sub_species

second_sub_species = Sub_species.new
second_sub_species.name = "amphibian"
second_sub_species.main_power = "holding breath"
second_sub_species.secondary_power_1 = "multispectrum vision"
second_sub_species.secondary_power_2 = "quick adaptor"
second_sub_species.secondary_power_3 = "big brain"
second_sub_species.primary_weakness = "dry heat"
second_sub_species.cultural_traits = "trustyworthy"
sub_species_list << second_sub_species

third_sub_species = Sub_species.new
third_sub_species.name = "avian"
third_sub_species.main_power = "resist cold"
third_sub_species.secondary_power_1 = "resist pain"
third_sub_species.secondary_power_2 = "inhuman stamina"
third_sub_species.secondary_power_3 = "eagl eye"
third_sub_species.primary_weakness = "extreme heat"
third_sub_species.cultural_traits = "tricky warrior"
sub_species_list << third_sub_species

forth_sub_species = Sub_species.new
forth_sub_species.name = "hercules"
forth_sub_species.main_power = "gravity adaptor"
forth_sub_species.secondary_power_1 = "preferd strength"
forth_sub_species.secondary_power_2 = "unpredicteble"
forth_sub_species.secondary_power_3 = "armor proficiant"
forth_sub_species.primary_weakness = "speedy degeneration"
forth_sub_species.cultural_traits = "knowledgeable"
sub_species_list << forth_sub_species

fifth_sub_species = Sub_species.new
fifth_sub_species.name = "imperial"
fifth_sub_species.main_power = "biolearning"
fifth_sub_species.secondary_power_1 = "quick adaptor"
fifth_sub_species.secondary_power_2 = "tech expert"
fifth_sub_species.secondary_power_3 = "forced to adpat"
fifth_sub_species.primary_weakness = "visiters folly"
fifth_sub_species.cultural_traits = "well traveled"
sub_species_list << fifth_sub_species

sixth_sub_species = Sub_species.new
sixth_sub_species.name = "warper"
sixth_sub_species.main_power = "distort distortion"
sixth_sub_species.secondary_power_1 = "space time warper"
sixth_sub_species.secondary_power_2 = "forced to adapt"
sixth_sub_species.secondary_power_3 = "esp"
sixth_sub_species.primary_weakness = "years of hell"
sixth_sub_species.cultural_traits = "well traveled"
sub_species_list << sixth_sub_species

puts sub_species_list.inspect
sub_species_list.each { |species|
  all_sub_species[species.name] = species
}
puts all_sub_species.inspect

#print 'please enter subspecies name'

all_sub_species.each {|k,v|
  puts k + " " + v.inspect
  v.instance_variables.each { |w|
    puts w.inspect + " " + v.instance_variable_get(w)
  }
}
sub_species_name = gets().strip
puts sub_species_name.inspect
puts all_sub_species[sub_species_name].inspect