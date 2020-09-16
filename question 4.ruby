puts "Please enter the file name"
filename = gets.chomp

#exits the program is nothing is entered
if filename.size == 0.0 then
puts "No name entered\nProgram is now terminated!"
exit
end

file = File.open(filename)
file_data = file.read

#splits every word and removes apostrophe and calculates size
wordcount = file_data.gsub("''"," ").split.size

#delete white space and calculate chars
charcount = file_data.delete(' ').chars.size

#calculates sentences with . and ; and adds them up
sentencecount = file_data.split(". ").length
sentencecount2 = file_data.split("; ").length
sentencecount3 = sentencecount + sentencecount2 - 1

#calculates Automated Readability Index
ARIvalue = 4.71*(charcount/wordcount)+0.5*(wordcount/sentencecount3)-21.43
GL= ARIvalue.to_i
case GL
when 1
  gradeLevel="5-6 Kindergarten"
when 2 
  gradeLevel="6-7 First/Second Grade"
when 3
  gradeLevel="7-9 Third Grade"
when 4 
  gradeLevel="9-10 Fourth Grade"
when 5
  gradeLevel="10-11Fifth Grade"
when 6
  gradeLevel="11-12 Sixth Grade"
when 7
  gradeLevel="12-13 Seventh Grade"
when 8
  gradeLevel= "13-14 Eighth Grade"
when 9
  gradeLevel= "14-15 Ninth Grade"  
when 10       
  gradeLevel= "15-16 Tenth Grade"   
when 11 
  gradeLevel= "16-17 Eleventh Grade"  
when 12  
  gradeLevel= "17-18 Twelth Grade" 
when 13   
  gradeLevel= "18-24 College student"
when 14 
  gradeLevel="24+ Professor"  
end 

#printing everything
puts "Total # of characters is: #{charcount}"
puts "Total # of words is: #{wordcount}" 
puts "Total # of sentences is: #{sentencecount3}" 
puts "Total # of Automated Readability Index: #{ARIvalue}"
puts "Grade Level: #{gradeLevel}"
