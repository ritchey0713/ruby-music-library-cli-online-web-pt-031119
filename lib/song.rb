class Song 
  attr_accessor :name 
  
  def initialize(name, artist="")
    @name = name 
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

    # Or, as a one-liner:
    # new(name).tap{ |s| s.save }
  end
  
end 