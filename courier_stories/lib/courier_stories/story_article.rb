class StoryArticle
    @@all = []
    attr_accessor :article
    def initialize(article: nil)
        @article = article
        @@all << self
    end

    def self.all
        @@all
    end
    
end