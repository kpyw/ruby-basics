# PIG LATIN CHALLENGE

# For this challenge, you'll need to encode sentences into pig latin, and also decode them.

# You'll need to write two methods: one to encode, and one to decode.

# Examples:

# "ruby rules" becomes "ubyray ulesray"
# "go blackhawks" becomes "ogay lackhawksbay"
# "apples are happy fruit" becomes "applesay areay appyhay ruitfay"

# Encoding rules are widely debated, so here are some simple ones to get us started:

# 1. If a word starts with a consonant, move it to the end of the word, and then add "ay"
# 2. If a word starts with a vowel, simply add "ay" to the end of the word.

# After you can encode, try to decode!

# ----------------------------------------------------

# If you want to get fancy, try one or more of these:

# 3. If a word starts with a consonant cluster, like "challenge", move the cluster: "allengechay"
# 4. If a word starts with a Y, consider it to be a consonant, but all other Ys are vowels.
# 5. The entire rulebook at http://en.wikipedia.org/wiki/Pig_Latin#Rules

# Here are some sentences to get you started:

# address = "Four score and seven years ago our fathers brought forth on this continent a new nation, conceived in liberty, and dedicated to the proposition that all men are created equal."
# ruby = "Ruby gives us lots of data containers to choose from"

# oodgay ucklay!


#ENCODER
# Kate's method for a single word - THIS WORKS
# word = gets.chomp
# first = word.chr

# if word =~ /^[aeiou]/i
#   puts word + "ay"
#   else
#     word.slice!(0)
#     puts word + first + "ay"
# end


# attempting to do on multiple words


sentence=gets.chomp
puts sentence.split
puts "----"
word=sentence.split

word.each do |latin|
# "#{latin}" = gets.chomp
first = "#{latin}".chr
char="#{latin}".length
base = "#{latin}".slice(1..char)

  if "#{latin}" =~ /^[aeiou]/i
  puts "#{latin}" + "ay"
  else
   puts base + first + "ay"
   end
end
#limitation of my approach - words are output not in a row

#DECODER
# Kate's method for a single word
#plan: chop off "ay" if vowel, put the word.
#if consanant, chop last letter, save as new var and merge new var with word

word = gets.chomp
base=word.chop!.chop!
puts base

length=base.length
wordend=base.slice!(0..length-2)

puts wordend


# if word =~ /^[aeiou]/i
  # puts word
  # else
  #   word.slice!(0)
  #   puts word + first + "ay"
# end

