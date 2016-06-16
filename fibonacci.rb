def fibs(n ,ary = [])
	for n in (0..(n-1)) do
    ary << n if n < 2 
	ary << ary[n-1] + ary[n-2] if n>= 2
    end
    return ary
end

def fibs_rec(n)
    if n == 0
    	return 0
    elsif n == 1
    	return 1
    elsif n >= 2
    fibs_rec(n-1) + fibs_rec(n-2)
    end
end

def fibs_rec_display(n)
arry = []
for n in 0..(n-1) do
  arry << fibs_rec(n)
  end
puts arry
end
