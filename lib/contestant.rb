# class to store contestant details
class Contestant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  # TODO: possibly pull this method out for all classes
  def to_s
    @name
  end
end
