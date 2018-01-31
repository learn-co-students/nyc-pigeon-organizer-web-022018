def nyc_pigeon_organizer(data)
  output = {}

  data.each do |attribute_name, hash|
    hash.each do |attribute_value, names|
      names.each do |name|
        if output[name].nil?
          output[name] = {attribute_name => [attribute_value.to_s]}
        elsif output[name][attribute_name].nil?
          output[name][attribute_name] = [attribute_value.to_s]
        else
          output[name][attribute_name] << attribute_value.to_s
        end
      end
    end
  end

  output
end
