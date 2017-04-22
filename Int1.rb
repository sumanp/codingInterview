#Coding Exercise at Kiprosh

puts "Please enter your text"
text = gets.chomp!

if text.size >= 500
  puts "Warning! Please enter 500 characters or less"
end

search_terms = ["C++", "C#", "Python", "Ruby"] + ["Physics", "Mathematics", "Chemistry", "CS", "Information Technology"] + ["Bike", "Bus", "Rickshaw"]

def count_em(text, search_terms)
  counts = Hash.new(0)
  search_terms.each do |term|
    counts[term] = text.scan(term).count(term)
  end
  output = counts.select{|k,v| v > 0 }
  sorted_output = Hash[output.sort]
  sorted_output.each do |k,v|
    puts "#{k} = #{v}"
  end
end

count_em(text, search_terms)
