# class to store contestant details
class Contestant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    @name
  end
end
