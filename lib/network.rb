class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    characters.max_by {|character| character.salary}.actor
  end

  def payroll
    characters.reduce({}) do |hash, character|
      hash[character.actor] = character.salary
      hash
    end
  end

  def characters
    @shows.flat_map {|show| show.characters}
  end
end
