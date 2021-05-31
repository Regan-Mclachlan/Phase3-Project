require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
    def get_page
        doc = Nokogiri::HTML(open("https://narrabricourier.com.au/"))
        puts doc
    end
end

Scraper.new.get_page