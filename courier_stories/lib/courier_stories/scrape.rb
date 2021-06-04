require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

    attr_reader :doc, :page
    attr_accessor :title, :url, :excerpt, :scrape, :article

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

    def scrape_article_page(url)
        @page = Nokogiri::HTML(open(url))
        sort_article
    end

    def sort_article
        self.page.css(".post-content").collect do |info|
             article = info.css("p").text.strip
             StoryArticle.new(article: article)
        end
    end


end
