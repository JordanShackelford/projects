def is_palindrome(x)
    return false if x < 0
    num = x
    num_str = num.to_s
    i = 0
    j = num_str.length - 1
    while i < j
        return false if num_str[i] != num_str[j]
        i += 1
        j -= 1
    end
    true
end