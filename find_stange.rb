# coding: utf-8
$stdin.each_line do |line|
  puts line.gsub(/([^\sA-Za-z\u0E00-\u0EFF\.\(\)\"])/) {|m| " =>#{m.ord.to_s(16)}   #{m}<= "}
end
