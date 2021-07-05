def nyc_pigeon_organizer(data)
  my_hash = {}
  name = pigeon_name (data) 
  color = pigeon_color(name,data)
  gender = pigeon_gender(name,data)
  location = pigeon_location(name,data)
 
  name.each do |element|
    my_hash[element] = { :color => color[element], :gender => gender[element], :lives => location[element]}
  end
  pp my_hash
end

def pigeon_name(data)
new_arr = []
data.each do |key1,value1|
  value1.each do |key2,value2|
    value2.each {|ele| new_arr << ele}
  end
end
new_arr = new_arr.uniq
end

def pigeon_color (name,new_data)
  new_hash = {}
  data = new_data[:color]
  name.each do |ele|
    new_arr = []
    data.each do |col,arr|
      arr.each do |pg_name|
        if pg_name == ele
          new_arr << col.to_s
        end  
      end
    end
    new_hash[ele] = new_arr
  end
  new_hash
end

def pigeon_gender(name,new_data)
  new_hash = {}
  data = new_data[:gender]
  name.each do |ele1|
    new_arr = []
    data.each do |key,arr|
      arr.each do |ele2|
        if ele1 == ele2
          new_arr << key.to_s
      end
    end
  end
  new_hash[ele1] = new_arr
end
  new_hash
end

def pigeon_location(name,new_data)
  new_hash = {}
  data = new_data[:lives]
  name.each do |ele1|
    new_arr = []
    data.each do |key,arr|
      arr.each do |ele2|
        if ele1 == ele2
          new_arr <<  key
      end
    end
    end
    new_hash[ele1] = new_arr
  end
 new_hash
end