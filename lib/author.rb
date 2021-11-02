class Author 
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end


    def self.all 
        @@all 
    end

    def posts
        Post.all 
    end
    
    def add_post(post)
        post.author = self 
    end

    def add_post_by_title(title)
      new_instance = Post.new(title)
      new_instance.author = self 
      new_instance.author 
    end

    def self.post_count 
        Post.all.count
    end

end