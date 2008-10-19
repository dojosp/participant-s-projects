def sweep(minefield)
  if minefield == '*'
      minefield
  else
      minefield[0] = '0'
  end
end

def replace(minefield)
  minefield.inject [] do |ret, row|
    ret << row.map {|position| position == '.' ? 0 : '*'}
  end
end

def scan_mines(minefield)
  minefield.inject [] do |ret, row|
    ret << row.map {|position| position == '.' ? 1 : '*'}
  end
end