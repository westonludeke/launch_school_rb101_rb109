# ddaaiillyy ddoouubbllee

# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

def crunch(str)
  arr = str.split("")
  remove_dupes = arr.chunk(&:itself).map(&:first).join('')
  p remove_dupes
end

crunch('ddaaiillyy ddoouubbllee')
crunch('4444abcabccba')
crunch('ggggggggggggggg')
crunch('a')
crunch('')