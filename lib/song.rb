require 'pry'
class Song 

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name 
    @@all << self   #class variable that holds all instances of songs each time a new Song is instantiated. 
  end

  def self.all 
    @@all
  end

  def artist_name
    if self.artist
      return self.artist.name 
    else 
      return nil
    end
  end
 

end

















































# require 'pry'
# class Song
#     attr_accessor :artist, :name


#     @@all = []

#     def initialize(name)
#         @name = name
#         @@all << self 
#     end

#     def self.all 
#         @@all
#     end

#     def artist_name
#       if self.artist 
#         return self.artist.name 
#       else
#         return nil
#       end
#     end





# end
