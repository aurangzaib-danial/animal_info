class Animal
  attr_accessor :name, :kingdom, :phylum, :klass, :order

  def self.new_from_wikipedia(name)
    properties = AnimalScraper.scrape_from_wikipedia(normalize_name(name))

    Animal.new.tap do |animal|
      properties.each do |property,value|
        animal.send("#{property}=", value)
      end
    end
  end

  def self.normalize_name(name)
    name.gsub(" ", "_").downcase
  end
end
