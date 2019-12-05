def nyc_pigeon_organizer(data)
  updated_data = {}
  
  data.each do |key, value|
    value.each do |new_value, names|
      names.each do |name|
        
        unless updated_data[name]
          updated_data[name] = {}
        end
        
        unless updated_data[name][key]
          updated_data[name][key] = []
        end
        
        updated_data[name][key].push(new_value.to_s)
      end
    end
  end
  updated_data
end