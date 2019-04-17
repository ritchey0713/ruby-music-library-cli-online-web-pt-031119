class Song 
  attr_accessor :name
  attr_reader :artist, :genre 
  @@all = []
  
  def initialize(name, artist=nil, genre=nil)
    @name = name 
    # @artist = artist
    
    self.artist= artist if artist

    # @genre = genre
    self.genre = genre if genre 

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
    song = new(name)
    song.save
    song
  end
  
  def artist=(artist)
    @artist = artist
    # binding.pry
    artist.add_song(self)
  end 
  
  def genre=(genre)
    @genre = genre
    genre.songs << self if !genre.songs.include?(self)
  end 
  
  def self.find_by_name(name)
    all.detect{|song| song.name == name}
  end 
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || create(name)
  end 

  
end 







