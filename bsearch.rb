require 'rubygems'
require 'pry-debugger'
module ArrayUtil
  def self.bsearch(array, element)
    return false if array==[]
    _bsearch(array, element, 0, array.length - 1)
  end

  def self._bsearch(array, element, start_index, end_index)
    return true if start_index==end_index && array[0] == element
    return false if start_index==end_index

    midpoint = (end_index - start_index)/2 + start_index
    if array[midpoint] == element
      return true
    elsif element > array[midpoint]
      _bsearch(array, element, midpoint+1, end_index)
    elsif element < array[midpoint]
      _bsearch(array, element, start_index, midpoint)
    end
  end
end
