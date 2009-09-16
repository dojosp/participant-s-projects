class Bitmap
  def initialize map
    @bitmap = map
  end

  def bitmap
    @bitmap
  end

  def comprimir
    return 'D01' if @bitmap.first[1] && @bitmap.first.first != @bitmap.first[1]
    @bitmap.first.first
  end
end
