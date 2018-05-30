# 9 x 9
# Y
# x x x x x x x x x X
# x x x x x x x x x
# x 1 x x x x x x 2
# x x x x x x x x x
# x x x x x x x x x
# x x x x x x x x x
# x x x x x x x x x
# x x x x x x x x x
# x x x x x x x x x

# 1 2 3 4 5

des = [
  [nil, nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil, nil]
]

def set_value(des, val, x, y)
  raise 'Out of range' unless valid?(x, y)
  des[y][x] = val unless des[y].include?(val) && des.each { |d| d[x] != val }
end

def valid?(x, y)
  return false if x >= 10 || x < 0
  return false if y >= 10 || y < 0
  true
end

set_value(des, 1, 0, 3)
set_value(des, 1, 2, 4) # => false
set_value(des, 1, 0, 5) # => false
p des
