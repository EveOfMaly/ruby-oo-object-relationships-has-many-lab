require 'pry'

class Artist 
    attr_accessor :name 

    @@songs = []

    def initialize(name)
        @name = name
        @@songs << self
    end

    def songs 
        Song.all.select do |song|
            song.artist == self 
        end
    end

    def add_song(song)
        song.artist = self 
    end

    def add_song_by_name(song)
        new_song = Song.new(song)
        new_song.artist = self 
        new_song.artist
    end

    def self.song_count
        counter = []

        Song.all.select do |song|
            counter << song.name 
        end
        counter.size
    end
end









































# class Artist
#     attr_accessor :name

#     @@all = []

#     def initialize(artist_name)
#         @name = artist_name
#         @@all << self 
#     end

#     def add_song(song)
#         song.artist = self 
#     end

#     def songs
#         Song.all.select do |song|
#             song.artist == self 
#         end
#     end

#     def add_song_by_name(name)
#         new_song = Song.new(name)
#         new_song.artist = self 
#         new_song.artist.name
#     end

#     def self.song_count
#         counter = []
#         Song.all.each do |song|
#             counter << song.artist
#         end
#         counter.length
#     end

# end
