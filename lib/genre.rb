# frozen_string_literal: true

class Genre
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artists
    Song.all.select { |song| song.genre == self }
        .map(&:artist).uniq
  end

  def songs
    Song.all.select { |song| song.genre == self }
  end
end
