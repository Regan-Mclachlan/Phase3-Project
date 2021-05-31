class Stories
    attr_accessor :headlines, :story, :excerpt, :url
    
    @@all = []

    def initialize
        @@all << self
    end
end

story = Stories.new
story.headlines = 