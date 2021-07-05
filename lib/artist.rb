class Artist

    attr_reader :name

    @@all = []

    def initialize(name)
        @name= name
        @@all << self
    end

    def  self.all
        @@all
    end

    # returns all songs associated with this Artist
    def songs
        Song.all.filter{|song| song.artist == self}
    end

    # given a name and genre, creates a new song associated with that artist
    def new_song(name, genre)
        song = Song.new(name, self, genre)
    end

    def genres
        genres = self.songs.map(&:genre)
    end

end
