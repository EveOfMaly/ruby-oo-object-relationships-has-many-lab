
class Post

        attr_accessor :author, :title
        @@all = []

        def initialize(title)
            @title = title 
            @@all << self 
        end

        def self.all
            @@all
        end

        def author_name
            if self.author 
                self.author.name
            else
                return nil 
            end
        end
end













































# class Post 
#     @@all = [] 

#     attr_accessor :title, :author

#     def initialize(title)
#         @title = title 
#         @@all << self 
#     end

#     def self.all 
#         @@all 
#     end 


#     def author_name 
#         if self.author 
#             return self.author.name
#         else
#             return nil
#         end
#     end




# end 