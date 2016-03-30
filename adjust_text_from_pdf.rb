# coding: utf-8
tr_map = {"" => "่", "" => "่", "" => "่", "" => "้", "" => "้", "" => "็", "" => "ิ",
          "" => "ี", "" => "ื", "" => "ั", "" => "์",
          "" => "\t", "“" => "\"", "”" => "\"", "" => "้"}

puts $stdin.read.chars.map{|ch| tr_map[ch] || ch}.join
  .gsub(/([่้๊๋])([ัุูิีึื])/, '\\2\\1')
  .gsub(/([ัุูิีึื])\s+([่้๊๋])/, '\\1\\2')
  .gsub(/\s+(?=[ัุูิีึื])/, '')