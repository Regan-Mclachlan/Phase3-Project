class CourierStories::CLI
    attr_accessor :scrape

    def initialize
        @scrape = Scraper.new.scrape_page
        start
    end
    
    def start
        puts "Welcome to the Courier Newspaper"
        puts "Would you like to view a recent story?"
        puts "~~Input [Y] for yes or input any other character to exit.~~"

        input = gets.strip

        display_article if input.downcase == "y"

    end

    def display_article
        Story.all.each.with_index(1) do |post, index|
             puts "#{index} #{post.title}"
         end
     end

     def prompt_user
        puts "Input the number of the article you are interested in."
        puts "Intput [exit] to quit"
        input = ""
        while input != "exit"
            input = gets.strip
            if input.to_i !=0 && input.to_i <= Story.all.size
     end


end
