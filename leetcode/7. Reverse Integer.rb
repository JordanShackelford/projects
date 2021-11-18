def reverse(x)
    negative = x < 0
    num = x.abs
    num_str = num.to_s
    num_str.reverse!
    num = num_str.to_i
    if negative
        num = -num
    end
    if num > 2**31 - 1 || num < -2**31
        0
    else
        num
    end
end