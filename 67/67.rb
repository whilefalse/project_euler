tree = IO.read('triangle.txt')

height = tree.each_line.to_a.length
tree_array = tree.each_line.map { |line| line.split.map(&:to_i) }
max = tree_array.flatten.max

# Negate all values and use Djikstra to find shortest path
# (Djiksta is valid in this case as all lengths are negative)
tree_array = tree_array.map { |line| line.map { |elem| -elem } }

# Holds the shortests paths to all places in the current row
shortest_paths = { [0,0] => tree_array[0][0] }

(height-1).times do
  shortest_paths = {}.tap do |new_paths|
    shortest_paths.each do |place, cost|
      # Can either go straight down or down and right one
      keys = [[place[0]+1, place[1]], [place[0]+1, place[1]+1]]

      keys.each do |key|
        element_cost = tree_array[key[0]][key[1]]
        new_cost = element_cost + cost

        new_paths[key] = new_paths[key] ? [new_paths[key], new_cost].min : new_cost
      end
    end
  end
end

p shortest_paths.map { |_, cost| -cost }.max
