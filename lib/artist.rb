require 'pry'
class Artist
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def songs
        Song.all.collect do |song|
            if song.artist == self
                song
            end
        end

        # Song.all.collect do |songs|
        #     songs
        # end
    end


    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        new_song.artist = self 
    end

    def self.song_count
        Song.all.length
        # Song.all.length
    end
end