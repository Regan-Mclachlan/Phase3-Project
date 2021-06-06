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
         prompt_user
     end

     def prompt_user
        puts "Input the number of the article you are interested in to see the excerpt."
        puts "Input [exit] to quit"
        puts "Input [home] to return to homepage"
        input = ""
        while input != "exit"
            input = gets.strip
            if input.to_i !=0 && input.to_i <= Story.all.size
                Story.all[input.to_i - 1].print_excerpt(input.to_i)
                
            elsif input == "home"
                display_article
                clear_recent_article
            
            elsif input == "exit"
                puts "Goodbye"
                exit
            elsif input == "yes"
                Story.new.print_story
            else
                puts "Invalid input please try again"
            end
        end

     end

     def clear_recent_article
        StoryArticle.all.clear
     end


end
