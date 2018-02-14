def nyc_pigeon_organizer(data)
    # write your code here!
    hash = {}
    data.each do |k, v|
        v.each do |k2, v2|
            v2.each do |i|
                hash[i] ||= {}
                hash[i][k] ||= []
                hash[i][k] << k2.to_s
            end
        end
    end
    hash
end

