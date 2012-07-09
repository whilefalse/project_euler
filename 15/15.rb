class PathFinder
  def initialize
    @grid_size = 20
    @paths = {[@grid_size, @grid_size] => 1}
  end

  def paths_from(x,y)
    return @paths[[x,y]] if @paths[[x,y]]

    total = 0
    if x < @grid_size
      total += paths_from(x+1, y)
    end

    if y < @grid_size
      total += paths_from(x, y+1)
    end

    @paths[[x,y]] = total
    return total
  end
end

p PathFinder.new.paths_from(0, 0)
