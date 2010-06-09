class Storehouse
  def initialize column_count
    @column_count = column_count
    @columns = [[]]*@column_count
  end
  
  def state
    state_string = ""
    @columns.each_with_index do | column, index |
      column_contents = column.join(" ")
      if column_contents != ""
        column_contents = " " + column_contents
      end
      state_string += "#{index}:#{column_contents}\n"
    end
    state_string   
  end
  
  def add_box name, column
    @columns[column] = [name]
  end
  
  def move_onto sourceBox, targetBox
    sourceColumn = find_column(sourceBox)
    targetColumn = find_column(targetBox)
    
    targetColumn << sourceColumn[0]
    sourceColumn.clear
  end
  
  private
  def find_column(boxLabel)
    @columns.each do | column |
      if(column.include?(boxLabel))
        return column
      end
    end
  end
end