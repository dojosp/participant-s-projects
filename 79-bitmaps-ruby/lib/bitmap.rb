class Bitmap
  def initialize map
    @bitmap = map
  end

  def bitmap
    @bitmap
  end

  def comprimir
    if @bitmap.first[1] && @bitmap.first.first != @bitmap.first[1]
      return 'D01' if @bitmap.first.first == 0
      return 'D10'
    end
    @bitmap.first.first.to_s
  end

  private

    def heterogeneo?
      return true if @bitmap.first.size == 2 &&
                     @bitmap.first.first != @bitmap.first[1]
      false
    end

end
