require_relative 'system'
require_relative 'planet'
require_relative 'moon'
require_relative 'star'

home = System.new

sun = Star.new('sun', 100, 'g-type')
earth = Planet.new('earth', 50, 24, 365)
moon = Moon.new('moon', 25, 30, earth) # we pass in the earth variable insted of a string so that it can pick up the earth instance.

home.add(earth)
home.add(sun)
home.add(moon)
p home.total_mass
