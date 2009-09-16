class Bitmap
  def initialize map
    @bitmap = map
  end

  def bitmap
    @bitmap
  end

  def comprimir
    if @bitmap.first.size == 1
      @bitmap.first.first
    else @bitmap.first.size == 2
      if @bitmap.first.first == @bitmap.first[1]
        @bitmap.first.first
      else
        'D01'
      end
    end
  end
end
