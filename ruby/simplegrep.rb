def grep(filename, searchstr)
    counter = 1
    File.open(filename, "r") do |infile|
        while (line = infile.gets)
            if /#{searchstr}/ =~ line
                puts "#{counter}  #{line}"
            end
            counter = counter + 1
        end
    end
end

filename = ARGV[0]
searchstr = ARGV[1]
grep(filename, searchstr)
