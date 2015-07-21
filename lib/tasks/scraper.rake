namespace :scraper do
  desc "Scrape Blog Feed of Some Websites"
    task scrape: :environment do
      BlogScraper.scrape
    end
end
