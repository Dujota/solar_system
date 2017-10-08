require_relative 'body'

class Planet < Body

  def initialize(name, mass, hours_in_day, days_in_year)
    super(name, mass) # this calls the parent class' initialize
    @hours_in_day = hours_in_day
    @days_in_year = days_in_year
  end
end
