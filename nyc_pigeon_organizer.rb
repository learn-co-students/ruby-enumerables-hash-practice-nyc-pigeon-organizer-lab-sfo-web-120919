require 'pp'




def nyc_pigeon_organizer(data)
  
    return data.reduce({}) do |final_hash, (finalKey, finalHashValue)|
   
      finalHashValue.each_pair do |specificAttributeKey, namesArrayValue|
        
        namesArrayValue.each do |name|
           
           if !final_hash[name]
            final_hash[name] = {}
           end
           
           if !final_hash[name][finalKey]
             final_hash[name][finalKey] = [specificAttributeKey.to_s]
           else
             final_hash[name][finalKey] << specificAttributeKey.to_s
           end 
    
        end # end each  
      
      end  # end each_pair
     
      final_hash
   end # end reduce 
  
end # end func 
  
 
