# frozen_string_literal: true

class Artist
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def genres
    Song.all.select { |song| song.artist == self }
        .map(&:genre).uniq
  end

  def new_song(name, genre)
    Song.new name, self, genre
  end
end
