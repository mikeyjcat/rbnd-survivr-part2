# models a tribe and tribal council behavior
class Tribe
  attr_reader :name
  attr_accessor :members

  def initialize(options)
    @name = options[:name] if options[:name]
    @members = options[:members] if options[:members]
    puts "created tribe #{@name.green}"
  end

  def tribal_council(immune = nil)
    @members -= [@members.select { |m| m != immune }.sample]
  end

  def to_s
    @name
  end
end
