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
        puts "~~~~~~~~~~~~~~~~~~~"
        puts "~Would you like to read the full article?~"
        puts "input [1] to read full article"
        puts "input [home] to return home"
        Scraper.new.scrape_article_page(Story.all[input.to_i - 1].url)
        if input.to_i == 1
            print_story
        end

    end

    def print_story
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts StoryArticle.all.first.article
    end

end