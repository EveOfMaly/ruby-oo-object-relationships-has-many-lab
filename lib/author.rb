






class Author

    attr_accessor :name

    @@post = []
    def initialize(name)
        @name = name 
        @@post << self 
    end

    def posts
        Post.all.select do |post|
            post.author == self  
        end
    end

    def add_post(post)
        post.author = self 
    end

    def add_post_by_title(title)
        new_post = Post.new(title)
        new_post.author= self 
        new_post.author
    end

    def self.post_count
        counter = []

        Post.all.each do |post|
            counter << post.title 
        end
        counter.size
    end

end





































# class Author 

#     @@all = []

#     attr_accessor :name 
#     def initialize(name)
#         @name = name 
#         @@all << self
#     end

#     def add_post(post)
#         @post = post 
#         post.author = self 
#     end 

#     def posts
#         Post.all.select do |post| 
#             post.author = self 
#         end
#     end


#     def add_post_by_title(title)
#         @title = title 
#         new_post = Post.new(title)
#         new_post.author = self 
#         new_post.author
#     end


#     def self.post_count
#         counter = []

#         Post.all.each do |post|
#             counter <<  post.author
#         end
#         counter.length 


#     end


# end 