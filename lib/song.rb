class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    # self.class.all << self
    @@all << self
  end

  def self.create
    song = self.new
    song.save
    song
  end

  def self.new_by_name(title)
    song = self.new
    song.name = title
    song
  end

  def self.create_by_name(title)
    song = self.new
    song.name = title
    @@all << song
    song
  end

  def self.find_by_name(name)
    @@all.find {|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def self.alphabetical
    @@all.sort { |a, b| a <=> b }
  end
  binding.pry

  # def read_me
  #   @name  #here i can call on just the instance variable because when the instnace method
  #   #readme is invoked, it will search the @name of the instance given
  # end
  # song.read_me

# class is blueprint, or mom
#   instance is an object based on blueprint, or baby

# @name can also be accessed by .name
# instance variable
# .name is invoking the method created by attr_accessor
#
# setter
# def name=(name)
#   @name = name
# end
#
# getter
# def name
#   @name
# end



end
