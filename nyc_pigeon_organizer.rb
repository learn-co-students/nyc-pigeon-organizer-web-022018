def nyc_pigeon_organizer(data)
  data_hash = Hash.new
  data.each do |char, namesanddata|
    namesanddata.each do |data, names|
      names.each do |name|
        if data_hash == {} 
          data_hash = {name => {char => [data.to_s]}}
        elsif data_hash.keys.include?(name)
          if data_hash[name].keys.include?(char)
            data_hash[name][char].push(data.to_s)
          else 
            data_hash[name][char] = [data.to_s]
          end 
        else 
          data_hash[name] = {char => [data.to_s]}
        end 
      end
    end 
  end
  data_hash
end
