require 'spreadsheet'
workbook= Spreadsheet.open "./TOC.xls"

sheet= workbook.worksheets[0]
print sheet[11, 1]

=begin
sheet.each do |row|
  print row[1]
  puts
=end

#end



