class AnimalInfo::Scraper
  def self.scrape_from_wikipedia(name)
    html = get_html(name)
    animal_name = html.search("h1#firstHeading").text
    properties = { name: animal_name }
    categories = ["Kingdom", "Phylum", "Class", "Order"]

    html.search("table.infobox.biota tr").each do |table_row|
      table_data = table_row.search("td")
      if table_data.size == 2
        category = table_data.first.text.strip.gsub(":", "")

        if categories.include?(category)
          if !table_data.last.search("b").empty?
            category_info = table_data.last.search("b").text.strip
          else
            category_info = table_data.last.text.strip
          end

          category = "Klass" if category == "Class"

          properties[category.downcase.to_sym] = category_info
        end
      end
    end
    properties[:url] = "https://en.wikipedia.org/wiki/#{name}"
    properties
  end

  def self.get_html(name)
    url = "https://en.wikipedia.org/wiki/#{name}"
    Nokogiri::HTML(open(url))
  end
end
