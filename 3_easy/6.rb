# Exclusive Or

# The || operator returns a truthy value if either or both of its operands are truthy, a falsey value if both operands are falsey. The && operator returns a truthy value if both of its operands are truthy, and a falsey value if either operand is falsey. This works great until you need only one of two conditions to be truthy, the so-called exclusive or.

# In this exercise, you will write a method named xor that takes two arguments, and returns true if exactly one of its arguments is truthy, false otherwise.

# Exclusive Or (XOR) returns 'True' only if one value is True. It returns 'False' if both values are false or if both values are true.

def xor?(n1, n2)

  (n1 == !n2) || (!n1 == n2)

end

p xor?(5.even?, 4.even?)# == true
p xor?(5.odd?, 4.odd?) #== true
p xor?(5.odd?, 4.even?) #== false
p xor?(5.even?, 4.odd?) #== false