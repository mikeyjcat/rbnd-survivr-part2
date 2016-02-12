# to build and store jury details and voting actions
class Jury
  attr_accessor :members

  def initialize
    @members = []
  end

  def add_member(member)
    @members << member
  end

  def cast_votes(finalists)
    votes = {}
    votes.default = 0
    @members.length.times do
      vote = finalists.sample
      puts vote
      votes[vote] = votes[vote] + 1
    end
    votes
  end

  def report_votes(votes)
    votes.each do |k, v|
      puts "Contestant :#{k.name} Votes :#{v}"
    end
  end

  def announce_winner(votes)
    votes.key(votes.values.max)
  end
end
