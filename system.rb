class System

  def initialize
    @bodies = []
  end

  def add(body)
    @bodies << body
  end

  def all
    @bodies
  end

  def total_mass
    # total = 0
    # @bodies.each{ |body| total += body.mass}
    # total
    # new methoid to try out .sum -- ruby docs -- it loops and accesses the element and adds up the element we specify

    #SECOND METHOD
    # @bodies.sum {|body| body.mass}

    # if the only thing im doing is calling a method on the item im looping for
    @bodies.sum(&:mass) #where the &:mass is the same as |body|body.mass

    #this is for creating
    @bodies.reduce(0) do |total, body|
      total + body.mass
    end
  end

end
