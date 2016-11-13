  def sortuj(argument)
    sortuj_tabele(argument, 0, argument.length-1)
    return argument
  end

  private
  def sortuj_tabele(argument, low, high)
  return if low >= high
  #INDEKS
    j = partition(argument, low, high)
  #LEWA
    sortuj_tabele(argument, low, j-1)
  #PRAWA
    sortuj_tabele(argument, j+1, high)
  end

  def partition(argument, low, high)
    i = low
    j = high+1
    while true
    #LEWY ELEMENT MNIEJSZY
    while argument[i+=1] < argument[low]
      break if i == high
    end
    #PRAWY ELEMENT WIEKSZY
    while argument[j-=1] > argument[low]
      break if j == low
    end
    #
    break if i >=j
    zamien(argument, i, j)
    end
    zamien(argument, low, j)
    return j
  end

  #ZAMIANA ELEMENTOW
  def zamien(argument, i, j)
    argument[i], argument[j] = argument[j], argument[i]
  end

  public

  #DRUKOWANIE
  def drukuj(argument)
    argument.each {|i| print i, " "}
    print "\n"
  end

