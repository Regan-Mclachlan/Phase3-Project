class Story
    attr_accessor :title, :story, :excerpt, :url
    
    @@all = []

    def initialize(title: nil, url: nil, excerpt: nil)
        Scraper.new
        @title = title
        @url = url
        @excerpt = excerpt
        @@all << self
    end

    def self.all
        @@all
    end

end