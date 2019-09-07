class Controller
  def call
    puts "Welcome to Animal Information Program\n\n"
    puts "Please enter the name of an animal and please spell it correctly!"

    @animal_name = gets.strip

    display_information if @animal_name != ""
  end

  def display_information
    begin
      animal = Animal.new_from_wikipedia(@animal_name)
      if animal.kingdom || animal.phylum || animal.klass || animal.order
        puts
        puts "Name: #{animal.name}"
        puts "Kingdom: #{animal.kingdom}"
        puts "Phylum: #{animal.phylum}"
        puts "Class: #{animal.klass}"
        puts "Order: #{animal.order}"
      else
        puts "Not Found!"
      end
    rescue
      puts "Not Found 404!"
    end
  end
end
