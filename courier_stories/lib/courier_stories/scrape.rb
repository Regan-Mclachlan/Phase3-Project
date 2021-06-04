require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

    attr_reader :doc
    attr_accessor :title, :url, :excerpt, :scrape

    @@all = []

    def initialize
    end
    def self.all
        @@all
    end

    def scrape_page
        @doc = Nokogiri::HTML(open("https://narrabricourier.com.au/"))

        scrape_articles
    end
    def scrape_articles
        self.doc.css("article.post").collect do |post|
            url = post.css("a").attr("href").value
            excerpt = post.css(".entry-summary>p").text.strip
            title = post.css(".entry-title").text.strip
            Story.new(title: title, url: url, excerpt: excerpt)
        end
    end


end
