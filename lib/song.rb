require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  
  
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    #class variables
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
    
      
      
      
    
    # binding.pry
  

    # @@genre_count
    
    # @@artist_count[artist]
  
    
  # end
  

  
  def self.count
    @@count
  end
  
  def self.genre_count
    empty_hash = {}
    @@genres.each do |genre_list|
      if empty_hash.include?(genre_list)
        empty_hash[genre_list] += 1
      else empty_hash[genre_list] = 1
    end
    end
    empty_hash
  end

  
  def self.artist_count
    empty_artist_hash = {}
    @@artists.each do |artist_list|
      if empty_artist_hash.include?(artist_list)
        empty_artist_hash[artist_list] += 1
      else empty_artist_hash[artist_list] = 1
    end
    end
    empty_artist_hash
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
end