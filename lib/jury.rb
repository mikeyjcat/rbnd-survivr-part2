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
    if finalists.size != 2
      fail ArgumentError, "Should be two finalists : #{finalists.size}"
    end
    votes = { finalists[0] => 0, finalists[1] => 0 }

    @members.length.times do
      vote = finalists.sample
      puts vote
      votes[vote] = votes[vote] + 1
    end
    votes
  end

  def report_votes(votes)
    votes.each { |k, v| puts "Contestant :#{k.name} Votes :#{v}" }
  end

  def announce_winner(votes)
    votes.key(votes.values.max)
  end
end
