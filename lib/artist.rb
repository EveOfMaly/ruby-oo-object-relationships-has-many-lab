require 'pry'
class Artist 
    attr_accessor :name, :songs


    @@all  = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end 

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self 
    end

    def add_song_by_name(name)
        new_instance = Song.new(name)
        new_instance.artist = self 
        new_instance
    end


    def self.song_count
        Song.all.count 
    end

end