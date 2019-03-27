class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
    @all_actors = {}
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    payroll
    name = @all_actors.max_by {|k,v| v}
    name[0]
  end

  def payroll
    @shows.each do |show|
      show.characters.each do |character|
        @all_actors[character.actor] = character.salary
      end
    end
    @all_actors
  end
end
