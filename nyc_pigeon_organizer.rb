def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  pigeon_names = []
  
  data.each do |attribute, property|
    # iterate over data set which contains attributes with properties
    property.each do |trait, array|
      # iterate over property which contains trait and array
      array.each do |name|
        # iterate over the array, taking each name and checking to see if already 
        # included in pigeon_names, if not then shovels into the pigeon_names array
        pigeon_names << name if !pigeon_names.include?(name)
      end
    end
  end
  
  pigeon_names.each do |pigeon|
    pigeon_list[pigeon] = Hash.new {|k, v| k[v] = []}
    # creates new hash for each pigeon in pigeon_list
    # defines default value of each key as an array
    data.each do |attribute, property|
     # iterate over data set which contains attributes with properties
      pigeon_list[pigeon][attribute]
      # sets the attribute for each pigeon
      property.each do |trait, array|
      # iterate over property which contains trait and array
        array.each do |name|
          pigeon_list[name][attribute] << trait.to_s if name == pigeon
          # if the name being compared is the same as the pigeon name, 
          # then shovel the trait as a string (previously a symbol) into
          # the appropriate attribute key for that pigeon name 
        end
      end
    end
  end
  
  pigeon_list

end

  # pigeon_names.each do | name |
  #   # for each of the names in pigeon_names array, 
  #   # sets pigeon_list hash key to name with value to zero
  #   pigeon_list[name] = {:color => "", :gender => "", :lives => ""}
  # end
  # p pigeon_list
  # {"Theo"=>{:color=>"", :gender=>"", :lives=>""},
  
  
  # data.each do | trait, property |
  #   property.each do | attribute, array |
  #     array.each do | name |
  #       pigeon_names << name if !pigeon_names.include?(name)
  #     end
  #   end
  # end





