require 'pry'
class Artist 
  attr_accessor :name, :songs
  @@all = []
    def initialize(name)
    @name = name
    @songs = []
  end
  
    def self.all
    @@all
  end

  def self.destroy_all
    all.clear
  end

  def save
    self.class.all << self
  end

  def self.create(name)
    artist = new(name)
    artist.save
    artist

    # Or, as a one-liner:
    # new(name).tap{ |a| a.save }
  end
  
  def add_song(song)
      song.artist = self unless song.artist
      @songs << song unless songs.include?(song)
      
    #   if song.artist == nil 
    #   song.artist = self 
    #   songs << song
    #   songs
    # end
  end
  
  def genres 
    x = songs.collect do |song|
      song.genre
    end.uniq
  end 

end 