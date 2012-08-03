tree = <<TREE
75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23
TREE

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
