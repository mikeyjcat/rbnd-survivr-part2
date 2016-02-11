class Jury
  attr_accessor :members

  def initialize
    @members = []
  end

  def add_member(member)
    @members << member
  end

  def cast_votes(finalists)
    @members.each do |member|
      puts member
    end
    { first: finalists[0], last: finalists[1] }
  end
end
