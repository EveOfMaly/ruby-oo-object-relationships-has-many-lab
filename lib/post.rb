class Post 
    @@all = [] 

    attr_accessor :title, :author

    def initialize(title)
        @title = title 
        @@all << self 
    end

    def self.all 
        @@all 
    end 


    def author_name 
        if self.author 
            return self.author.name
        else
            return nil
        end
    end


    def add_post_by_title(title)
        @title = title 
        new_post = Post.new(title)
        title.post = self 
        title.post
    end


end 