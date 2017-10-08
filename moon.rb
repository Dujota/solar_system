require_relative 'body'

class Moon < Body

  def initialize(name, mass, days_in_month, planet)
    super(name, mass)
    @days_in_month = days_in_month
    @planet = planet

  end

end
