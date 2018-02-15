require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  output = {}
  data.each do |attribute, detail|
    detail.each do |spec, name|
      name.each do |x|
        if output[x] == nil
          output[x] = {}
          output[x][attribute] = [spec.to_s]
        elsif
          output[x][attribute].is_a? Array
          output[x][attribute] << spec.to_s
        else
          output[x][attribute] = [spec.to_s]
        end
      end
    end
  end
  output
end
