require 'open-uri'

class BlogScraper
  def self.scrape
    puts "The scraping will happen shortly!"
    find_posts
  end

  def self.find_posts
    doc = Nokogiri::HTML(open("http://blog.teamtreehouse.com"))
      doc.css('.entry-title a').each do |link|
        PostScraper.scrape(link.attr("href"))
      end
  end

end

