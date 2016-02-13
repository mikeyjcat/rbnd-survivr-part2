# models a tribe and tribal council behavior
class Tribe
  attr_reader :name, :members

  def initialize(options)
    @name = options[:name] if options[:name]
    @members = options[:members] if options[:members]
    puts "created tribe #{@name}"
  end

  def tribal_council(immune = nil)
    voted_off = @members.select { |m| m != immune }.sample
    @members -= [voted_off]
    voted_off
  end

  def to_s
    @name
  end
end
