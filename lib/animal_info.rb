require "animal_info/version"

module AnimalInfo
  class Error < StandardError; end

end

require_relative 'animal.rb'
require_relative 'scraper.rb'
require_relative 'controller.rb'
