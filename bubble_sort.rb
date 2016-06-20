#takes an array of numbers and sorts it
def bubble_sort (arr)
	n = arr.length - 1
	n.times do
	x = 0
	  n.times do 
	    if arr[x] >= arr[x+1]
		first = arr[x]
		second = arr[x+1]
		arr[x] = second 
		arr[x+1] = first
		x = x+1
	    else
		x = x+1
	    end
      end
    end
puts arr
end

test = [7,5,3,2,1,3,4,6,9]
bubble_sort(test)

#takes an array of strings and sorts, accepts a block which defines how strings are sorted. length by default.
 def bubble_sort_by (arrs)
 		n = arrs.length - 1
	n.times do
	x = 0
	  n.times do 
	    if yield(arrs[x], arrs[x+1]) > 0
		first = arrs[x]
		second = arrs[x+1]
		arrs[x] = second 
		arrs[x+1] = first
		x = x+1
	    else
		x = x+1
	    end
      end
    end
puts arrs
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
      left.length - right.length
   end
