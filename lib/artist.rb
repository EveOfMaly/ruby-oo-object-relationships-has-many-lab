require 'pry'
class Artist
    attr_accessor :name

    @@all = []

    def initialize(artist_name)
        @name = artist_name
        @@all << self 
    end

    def add_song(song)
        song.artist = self 
    end

    def songs
        Song.all.select do |song|
            song.artist == self 
        end
    end

    def add_song_by_name(name)
        new_song = Song.new(name)
        new_song.artist = self 
        new_song.artist.name
    end

    def self.song_count
        counter = []
        Song.all.each do |song|
            counter << song.artist
        end
        counter.length
    end

end
