# your code goes here
def begins_with_r (array)
  array.each do |element|
    if element[0] != "r"
      return false
    end 
  end
  true
end

def contain_a (array)
  array.select{|x| x.include?('a')}
end

def first_wa(array)
  for i in 0..array.length do
    if array[i][0] == 'w' && array[i][1] == 'a'
      return array[i] 
      break
    end
  end
end

def remove_non_strings(array)
  array.select {|e| e.is_a? String }
end

def count_elements(array)
  #array.uniq.map {|e| e["count"] = array.count(e)}
  new_array = []
  array.uniq.each do |e|
    e[:count] = array.count(e)
    new_array << e
  end
  new_array
end

def merge_data(arr1, arr2)
  new_array = []
  arr1.each do |i|
    arr2.each do |j|
      new_array << i.merge(j[i[:first_name]])
    end
  end
  new_array
end

def find_cool(array)
  array.find_all {|e| e[:temperature] == "cool" }
end


# this may need work on again
def organize_schools(array)
  new_hash = {}
  array.each do |name, location_value|
    new_location = location_value[:location]
    if new_hash[location]
      new_hash[new_location] << name
    else
      new_hash[new_location] = []
      new_hash[new_location] << name
    end
  end
  new_hash
end