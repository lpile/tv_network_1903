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
    name = roster.max_by {|k,v| v}
    name[0]
  end

  def payroll
    payroll = roster
  end

  def roster
    roster = {}
    @shows.each {|show| show.characters.each {|character|
        roster[character.actor] = character.salary}}
    roster
  end
end
