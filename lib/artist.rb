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
    new(name).tap{|artist| artist.save}
  end
  
  def add_song()
    
  end


end 