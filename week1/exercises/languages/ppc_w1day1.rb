#Pair Programming Challenge - Monday 17 October 2016
#/-------------------------------------------------
#---------------- SETUP --------------------------
#--------------------------------------------------/

class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")

  array_of_languages = [ruby, python, javascript, go, rust, swift, java]

#----------------------------------------------------
#---------------------- EACH ------------------------
#----------------------------------------------------

def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end

array_printer(array_of_languages)

#-----------------------------------------------
#----------------------- MAP -------------------
#-----------------------------------------------

aged_languages = array_of_languages.map do |language|
    ProgrammingLanguage.new(language.name,language.age+1,language.type)
end

puts "The programming languages aged one year are: "
array_printer(aged_languages)
puts ""

#----------------------
#-------- SORT --------
#----------------------

sorted_array = array_of_languages.sort do |language_a,language_b|
  #Switch A and B to get descending order
  language_b.age <=> language_a.age
  #flip _b and _a to sort in descending order
end
array_printer(sorted_array)

#-----------------------
#------ delete_at ------
#-----------------------

puts ""
without_java = array_of_languages.map {|lang| lang}
without_java.delete_at(6)
array_printer(without_java)
puts ""
puts "Array of languages"
array_printer(array_of_languages)

#---------------------
#---- SHUFFLE -------
#---------------------

puts ""
puts "Shuffled"
shuffled_languages = sorted_array.shuffle
array_printer(shuffled_languages)

puts ""
puts "Reversed"
reversed_array = array_of_languages.reverse
array_printer(reversed_array)

puts ""
puts "Only static"
only_static = array_of_languages.select{|language| language.type == "Static"}
array_printer(only_static)

puts ""
puts "Dropped"
dropped_array = array_of_languages.drop(2)
array_printer(dropped_array)
