def test(str)
  chars = str.split('')
  chars.each do |x|
    x.upcase!
  end
  new_str = chars.join('')
  new_str
end

p test('you')

