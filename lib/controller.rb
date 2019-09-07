class AnimalInfo::Controller
  attr_reader :animal_name

  def initialize(animal_name)
    @animal_name = animal_name
    display_information
  end

  def display_information
    puts "Please wait while we fetch info for you!"
    begin
      animal = AnimalInfo::Animal.new_from_wikipedia(@animal_name)
      if animal.kingdom || animal.phylum || animal.klass || animal.order
        puts
        puts "Name: #{animal.name}"
        puts "Kingdom: #{animal.kingdom}"
        puts "Phylum: #{animal.phylum}"
        puts "Class: #{animal.klass}"
        puts "Order: #{animal.order}"
        puts "Source: #{animal.url}"
      else
        puts "Not Found!"
      end
    rescue
      puts "Not Found 404!"
    end
  end
end
