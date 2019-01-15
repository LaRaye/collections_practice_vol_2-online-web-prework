def begins_with_r(array)
  if array.all? {|element| element.start_with?("r") == true}
    true
  elsif 
    array == [ ]
    false
  else 
    false
  end
end

def contain_a(array)
  array.select {|element| element.include?("a")}
end

def first_wa(array)
  array.find {|element| element.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.delete_if {|element| (element == element.to_s) == false}
end

def count_elements(array)
  count_hash = Hash.new(0)
  array.each {|element| count_hash[element] += 1}
  
  #count_hash = {"blake" => 2, "ashley" => 1}
  
  new_array = [ ]
  
  count_hash.each do |key, value|
    new_hash = Hash.new(0)
    array_element = new_hash
    
    new_hash[:count] = value
    new_hash[:name] = key[:name]
      
    #new_hash = {:count => 2, :name => {:name => "blake"}}
    
    new_array << array_element
    end
  new_array
end

def merge_data(keys, data)
  
  
  new_merge = keys.merge(data)
  new_merge
end 