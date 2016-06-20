def merge_sort(arr)
	return arr if arr.length == 1 
	n = arr.length/2.to_f
	first = merge_sort(arr[0...n])
	second = merge_sort(arr[n..-1])
    merge(first, second)
end

 def merge(first, second)
 	i, j = 0, 0 
 	sorted = []
 	f, s = first.size, second.size
 	   while i < f || j < s
 	     if  i < f && j < s
 	     	if first[i] < second[j]
 	     		sorted << first[i]
 	     		i += 1
 	     	elsif first[i] > second[j]
 	     		sorted << second[j]
 	     		j += 1
 	     	else
 	     		sorted << first[i]
 	     		i += 1
 	     		sorted << second[j]
 	     		j += 1
 	     	end
 	     elsif i < f
 	     	sorted << first[i]
 	     	i += 1
 	     elsif j <  s
 	     	sorted << second[j]
 	     	j += 1
 	     end
 	   end
 	  return sorted
 end
 
 merge_sort([1,4,8,2,4.88,6,-1,2,6,5,25,23,1.5,-50])
 	     	
