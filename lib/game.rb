class Game
  attr_reader :tribes

  def initialize(tribe1, tribe2)
    @tribes = []
    @tribes << tribe1
    @tribes << tribe2
  end

  def add_tribe(tribe)
    @tribes << tribe
    @tribes
  end

  def immunity_challenge
    @tribes.sample
  end

  def clear_tribes
    @tribes = []
  end

  def merge(string)
    new_members = @tribes.each.map(&:members).flatten
    Tribe.new(name: string, members: new_members)
  end

  def individual_immunity_challenge
    # fail ArgumentError, 'Tribes not merged' if @tribes.size > 1
    @tribes[0].members.sample
  end
end
