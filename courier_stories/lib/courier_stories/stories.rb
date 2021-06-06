class Story
    attr_accessor :title, :story, :excerpt, :url
    
    @@all = []

    def initialize(title: nil, url: nil, excerpt: nil)
        @title = title
        @url = url
        @excerpt = excerpt
        @@all << self
    end

    def self.all
        @@all
    end

    def print_excerpt(input)
        puts "#{Story.all[input - 1].excerpt}"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "~Would you like to read the full article?~"
        puts "input [yes] to read full article"
        puts "input [home] to return home"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        Scraper.new.scrape_article_page(Story.all[input.to_i - 1].url)

    end

    def print_story
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts StoryArticle.all.last.article
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    end

end