class PostScraper

  def initialize(url)
    @url = url
  end

  def self.scrape(url)
    scraper = new(url)
    puts "Retrieving #{url} ..."
    scraper.retrieve
    puts "Saving Post ..."
    scraper.save
    scraper
  end

  def save
    @doc.css('p').each do |p|
      puts p.text
    end
  end

  def retrieve
    @doc = Nokogiri::HTML(open(@url))
  end

end
