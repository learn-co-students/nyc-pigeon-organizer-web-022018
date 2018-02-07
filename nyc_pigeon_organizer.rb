require "pry"

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |category, options_hash|
    options_hash.each do |option, name_array|
      name_array.each do |name|
        if !new_hash.include?(name)
          new_hash[name] = {}
        end
        if !new_hash[name].include?(category)
          new_hash[name][category] = []
        end
        if !new_hash[name][category].include?(option)
          new_hash[name][category] << option.to_s
        end 
      end
    end
  end
  new_hash
end 
