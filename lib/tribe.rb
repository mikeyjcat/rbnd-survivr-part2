# models a tribe and tribal council behavior
class Tribe
  attr_reader :name, :members

  def initialize(options)
    @name = options[:name] if options[:name]
    @members = options[:members] if options[:members]
    puts "created tribe #{@name}"
  end

  def tribal_council(immune)
    @members.select { |m| m != immune }.sample
  end

  def to_s
    @name
  end
end
