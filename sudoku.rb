
def sudoku(inp)
  inp.map! { |sub_array|
    p sub_array.class
    sub_array.map.with_index { |item, j|
      if item == 0
        nums = [1,2,3,4,5,6,7,8,9]
        sub_array.map! { |tmp_item| # cols
          if tmp_item.is_a? Numeric and tmp_item >= 1 and tmp_item <= 9
            nums.delete(tmp_item)
          end
        }
        inp.map! { |tmp_sub_array| # rows
          if tmp_sub_array[j].is_a? Numeric and tmp_sub_array[j] >= 1 and tmp_sub_array[j] <= 9
            nums.delete(tmp_sub_array[j])
          end
        }
        puts nums.join(' ')
        item = !nums.empty? ? nums.pop() : 'X'
        #puts item
      end
    }
  }
  inp
end


sudoku_ar = [[5,3,0,0,7,0,0,0,0],
             [6,0,0,1,9,5,0,0,0],
             [0,9,8,0,0,0,0,6,0],
             [8,0,0,0,6,0,0,0,3],
             [4,0,0,8,0,3,0,0,1],
             [7,0,0,0,2,0,0,0,6],
             [0,6,0,0,0,0,2,8,0],
             [0,0,0,4,1,9,0,0,5],
             [0,0,0,0,8,0,0,7,9]]
puts sudoku_ar.map { |x| x.join(' ') }
puts "\n"
puts sudoku(sudoku_ar).map { |x| x.join(' ') }
#puts sudoku_ar.map { |x| x.join(' ') }

